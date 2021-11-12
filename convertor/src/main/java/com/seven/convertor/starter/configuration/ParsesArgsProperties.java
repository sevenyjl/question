package com.seven.convertor.starter.configuration;

import com.seven.convertor.Application;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;

/**
 * @author y30016814
 * @since 2021/11/11 9:55
 */
public class ParsesArgsProperties {
    private final static HashMap<String, String> argsProperties = new HashMap<>();
    private final static Properties properties = new Properties();

    public static String getProperties(String key) {
        String s = argsProperties.get(key);
        if (s == null) {
            return properties.getProperty(key);
        }
        return s;
    }

    public static void init(String[] args) {
        // 解析参数
        if (args != null) {
            for (String arg : args) {
                if (arg.startsWith("-7")) {
                    String[] split = arg.split("=");
                    argsProperties.put(split[0].replace("-7", ""), split[1]);
                }
            }
        }
        // 加载配置
        String propertiesPath = argsProperties.get("propertiesPath");
        InputStream in;
        if (propertiesPath == null) {
            propertiesPath = "application.properties";
            in = Application.class.getClassLoader().getResourceAsStream(propertiesPath);
        } else {
            in = FileUtil.getInputStream(propertiesPath);
        }
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IoUtil.close(in);
        }
    }
}
