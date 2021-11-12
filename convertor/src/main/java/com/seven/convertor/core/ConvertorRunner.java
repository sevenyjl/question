package com.seven.convertor.core;

import com.seven.convertor.starter.configuration.ParsesArgsProperties;

import java.io.File;
import java.nio.charset.Charset;
import java.util.Date;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;

/**
 * @author y30016814
 * @since 2021/11/11 17:34
 */
public class ConvertorRunner {

    public static void run() {
        FileUtil.writeUtf8String(JSONUtil.toJsonStr(new DefaultConvertorCore().selectQuestionInfoInDir(
            new File(ParsesArgsProperties.getProperties("ConvertorClass.atr.dirPath")), pathname -> {
                String filterPrefix = ParsesArgsProperties.getProperties("ConvertorClass.atr.filterPrefix");
                String filterSuffix = ParsesArgsProperties.getProperties("ConvertorClass.atr.filterSuffix");
                if (StrUtil.isNotEmpty(filterPrefix)) {
                    if (!pathname.getName().startsWith(filterPrefix)) {
                        return false;
                    }
                }
                if (StrUtil.isNotEmpty(filterSuffix)) {
                    return pathname.getName().endsWith(filterSuffix);
                }
                return true;
            }, Charset.forName(ParsesArgsProperties.getProperties("ConvertorClass.atr.charset")),
            ParsesArgsProperties.getProperties("ConvertorClass.atr.cssQuery"),
            ParsesArgsProperties.getProperties("ConvertorClass.atr.typeAttributeKey"))),
            new File(ParsesArgsProperties.getProperties("json.outPath") + "/" + DateUtil.format(new Date(),
                "yyyy-MM-dd HH-mm-ss") + "-题.json"));
    }
}
