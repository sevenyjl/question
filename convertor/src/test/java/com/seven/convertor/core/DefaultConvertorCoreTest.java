package com.seven.convertor.core;

import org.junit.jupiter.api.Test;

import java.io.File;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

class DefaultConvertorCoreTest {

    @Test
    void selectQuestionInfoInDir() {
        String dir = "C:\\Users\\y30016814\\Desktop\\temp\\t1";
        Charset charset = StandardCharsets.UTF_16LE;
        // checkSubject.subjectType ==3 判断，2单选 1多选
        String typeAttributeKey = "ng-if";
        String cssQuery
            = "#examinContent > div > div > div.vtd.right-subjects-content > div.right-content.quest-niu > div > div > div.ng-scope";
        new DefaultConvertorCore().selectQuestionInfoInDir(new File(dir), pathname -> true, charset, cssQuery,
            typeAttributeKey).forEach(
            System.out::println);
    }

    @Test
    void selectQuestionInfo() {
        String path = "test_2.html";
        Charset charset = StandardCharsets.UTF_16LE;
        String typeAttributeKey = "ng-if";
        String cssQuery
            = "#examinContent > div > div > div.vtd.right-subjects-content > div.right-content.quest-niu > div > div > div.ng-scope";
        System.out.println(
            new DefaultConvertorCore().selectQuestionInfoInFile(new File(path), charset, cssQuery, typeAttributeKey));
    }
}