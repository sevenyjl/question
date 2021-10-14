package com.seven.question.utils;

import com.baomidou.mybatisplus.core.enums.SqlMethod;
import com.baomidou.mybatisplus.core.metadata.TableInfo;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.baomidou.mybatisplus.extension.toolkit.SqlHelper;

import org.apache.ibatis.executor.ErrorContext;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.ParameterMode;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.RowBounds;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;

public class SqlUtil {

    public static void writeSql(String sql) {
        String userDir = System.getProperty("user.dir");
        String updatePath = userDir + "\\src\\main\\resources\\sql\\question_" + DateUtil.format(new Date(),
            "yyyy-MM-dd-hh") + "update.sql";
        FileUtil.appendUtf8String(sql, updatePath);
    }

    public static String getOneSql(Object parameterObject) {

        TableInfo tableInfo = SqlHelper.table(parameterObject.getClass());
        String sqlStatement = tableInfo.getSqlStatement(SqlMethod.INSERT_ONE.getMethod());
        //        System.out.println(parameterObject.getClass());
        Configuration cg = TableInfoHelper.getTableInfo(parameterObject.getClass()).getConfiguration();
        MappedStatement mappedStatement = cg.getMappedStatement(sqlStatement);
        Configuration configuration = cg;
        // TODO: 2021/10/13 这里可以用拦截器了
        StatementHandler handler = configuration.newStatementHandler(null, mappedStatement, parameterObject,
            RowBounds.DEFAULT, null, null);
        BoundSql boundSql = handler.getBoundSql();
        String sql = boundSql.getSql();

        ErrorContext.instance().activity("setting parameters").object(mappedStatement.getParameterMap().getId());
        List<ParameterMapping> parameterMappings = boundSql.getParameterMappings();
        //把id字段也加入
        parameterMappings.add(new ParameterMapping.Builder(cg, "id", Long.class).build());
        int index = sql.lastIndexOf(")");
        sql = sql.substring(0, index) + ",?" + sql.substring(index);
        index = sql.indexOf(')');
        sql = sql.substring(0, index) + ",id" + sql.substring(index);

        return getInertSql(parameterObject, configuration, boundSql, sql, parameterMappings);
    }

    public static String getUpdateSql(Object parameterObject, Configuration configuration, BoundSql boundSql,
        List<ParameterMapping> parameterMappings) {
        String sql = boundSql.getSql();
        if (parameterMappings != null) {
            for (int i = 0; i < parameterMappings.size(); i++) {
                ParameterMapping parameterMapping = parameterMappings.get(i);
                if (parameterMapping.getMode() != ParameterMode.OUT) {
                    Object value;
                    String propertyName = parameterMapping.getProperty();
                    if (boundSql.hasAdditionalParameter("_parameter." + propertyName)) {
                        value = boundSql.getAdditionalParameter("_parameter." + propertyName);
                    } else if (parameterObject == null) {
                        value = null;
                    } else {
                        MetaObject metaObject = configuration.newMetaObject(parameterObject);
                        value = metaObject.getValue(propertyName);
                    }

                    sql = sql.replace("\n", "");
                    sql = sql.replaceFirst("\\?", valueType(value));

                }
            }
        }
        sql = sql + ";\n";
        //        System.out.println(sql);
        return sql;
    }

    // TODO: 2021/10/13 id 的添加
    public static String getInertSql(Object parameterObject, Configuration configuration, BoundSql boundSql,
        String sql,
        List<ParameterMapping> parameterMappings) {
        if (parameterMappings != null) {
            for (int i = 0; i < parameterMappings.size(); i++) {
                ParameterMapping parameterMapping = parameterMappings.get(i);
                if (parameterMapping.getMode() != ParameterMode.OUT) {
                    Object value;
                    String propertyName = parameterMapping.getProperty();
                    if (boundSql.hasAdditionalParameter(propertyName)) {
                        value = boundSql.getAdditionalParameter(propertyName);
                    } else if (parameterObject == null) {
                        value = null;
                    } else {
                        MetaObject metaObject = configuration.newMetaObject(parameterObject);
                        value = metaObject.getValue(propertyName);
                    }

                    sql = sql.replace("\n", "");
                    String s = valueType(value);
                    sql = sql.replaceFirst("\\?", s);

                }
            }
        }
        sql = sql + ";\n";
        //        System.out.println(sql);
        return sql;
    }

    public static String getListSql(List<?> list) {
        StringBuilder stringBuilder = new StringBuilder();
        list.forEach(o -> stringBuilder.append(getOneSql(o)));
        return stringBuilder.toString();
    }

    private static String valueType(Object value) {
        if (value != null) {
            Class<?> valueType = value.getClass();
            if (valueType.equals(String.class)) {
                return "'" + value.toString()
                    .replace("?", "？")
                    .replace("\\", "\\\\\\\\")
                    .replace("\n","\\\\n")
                    .replace("'", "\\\\'")
                    .replace("\"", "\\\\\"") + "'";
            } else if (valueType.equals(int.class) || valueType.equals(Integer.class)) {
                return value.toString();
            } else if (valueType.equals(long.class) || valueType.equals(Long.class)) {
                return value.toString();
            } else if (valueType.equals(short.class) || valueType.equals(Short.class)) {
                return value.toString();
            } else if (valueType.equals(java.util.Date.class)) {
                return "'" + value.toString() + "'";
            } else if (valueType.equals(boolean.class) || valueType.equals(Boolean.class)) {
                return (Boolean.parseBoolean(valueType.toString())) ? 1+ "" : 0 + "";
            } else if (valueType.equals(double.class) || valueType.equals(Double.class)) {
                return value.toString();
            } else if (valueType.equals(float.class) || valueType.equals(Float.class)) {
                return value.toString();
            } else if (valueType.equals(byte.class) || valueType.equals(Byte.class)) {
                return value.toString();
            } else if (valueType.equals(byte[].class) || valueType.equals(Byte[].class)) {
                return value.toString();
            } else if (valueType.equals(BigDecimal.class)) {
                return value.toString();
            } else if (valueType.equals(Timestamp.class)) {
                return "'" + value.toString() + "'";
            } else if (valueType.equals(java.sql.Date.class)) {
                return "'" + value.toString() + "'";
            } else {
                return "'" + value.toString() + "'";
            }
        } else {
            return "'NULL'";
        }
    }
}
