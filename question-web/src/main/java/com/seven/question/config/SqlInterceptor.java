package com.seven.question.config;

import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.seven.question.entity.Question;
import com.seven.question.utils.SqlUtil;

import org.apache.ibatis.binding.MapperMethod;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.ParameterMode;
import org.apache.ibatis.mapping.ResultMap;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.scripting.xmltags.DynamicContext;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;

/**
 * Created by PG on 2016/12/26.
 */
@Intercepts(value = {
    @Signature(type = Executor.class,
        method = "update",
        args = {MappedStatement.class, Object.class}),
    @Signature(type = Executor.class,
        method = "query",
        args = {
            MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class,
            CacheKey.class, BoundSql.class
        }),
    @Signature(type = Executor.class,
        method = "query",
        args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class})
})
//@Component
public class SqlInterceptor implements Interceptor {

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        Object target = invocation.getTarget();
        Object result = null;
        if (target instanceof Executor) {
            long start = System.currentTimeMillis();
            Method method = invocation.getMethod();
            /**执行方法*/
            result = invocation.proceed();
            long end = System.currentTimeMillis();
            final Object[] args = invocation.getArgs();

            //获取原始的ms
            MappedStatement ms = (MappedStatement) args[0];
            String commandName = ms.getSqlCommandType().name();
            String sql = "";
            if (commandName.equals("UPDATE")) {
                MapperMethod.ParamMap<?> parameterObject = (MapperMethod.ParamMap<?>) args[1];
                Object param1 = parameterObject.get("param1");
                BoundSql boundSql = ms.getBoundSql(parameterObject);
                List<ParameterMapping> parameterMappings = boundSql.getParameterMappings();
                Configuration cg = TableInfoHelper.getTableInfo(param1.getClass()).getConfiguration();
                sql = SqlUtil.getUpdateSql(param1, cg, boundSql, parameterMappings);
                SqlUtil.writeSql(sql);
            }
            // else if (commandName.equals("INSERT")) {
            //     Object arg = args[1];
            //     sql = SqlUtil.getOneSql(arg);
            // }
        }
        return result;
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties properties) {

    }
}
