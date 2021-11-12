package com.seven.convertor.starter.configuration;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class ParsesArgsPropertiesTest {

    /**
     * 测试启动参数
     */
    @Test
    public void testArgsProperties() {
        String[] strings = {"-7test=01", "-7test=02"};
        ParsesArgsProperties.init(strings);
        System.out.println(ParsesArgsProperties.getProperties("test"));
    }

    /**
     * 测试获取配置信息
     */
    @Test
    public void testLocalProperties() {
        ParsesArgsProperties.init(null);
        System.out.println(ParsesArgsProperties.getProperties("test.txt"));
    }

    /**
     * 测试获取外部配置信息
     */
    @Test
    public void testOutProperties() {
        ParsesArgsProperties.init(new String[]{"-7propertiesPath=D:\\my\\question-master\\convertor\\src\\main\\resources\\application.properties"});
        System.out.println(ParsesArgsProperties.getProperties("test.txt"));
    }

}