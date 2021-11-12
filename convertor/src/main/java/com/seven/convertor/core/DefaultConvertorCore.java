package com.seven.convertor.core;

import com.seven.convertor.entity.QuestionInfo;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import cn.hutool.core.io.FileUtil;
import lombok.extern.slf4j.Slf4j;

/**
 * @author y30016814
 * @since 2021/11/11 11:11
 */
@Slf4j
public class DefaultConvertorCore {

    public List<QuestionInfo> selectQuestionInfoInFile(File path, Charset charset, String cssQuery,
        String typeAttributeKey) {
        String canonicalPath = FileUtil.getCanonicalPath(path);
        log.debug("当前解析路径：{}", canonicalPath);
        return selectQuestionInfo(canonicalPath, FileUtil.readString(path, charset), cssQuery, typeAttributeKey);
    }

    public List<QuestionInfo> selectQuestionInfoInDir(File dir, FileFilter fileFilter, Charset charset, String cssQuery,
        String typeAttributeKey) {
        ArrayList<QuestionInfo> result = new ArrayList<>();
        FileUtil.loopFiles(dir, fileFilter)
            .forEach(
                file -> result.addAll(selectQuestionInfoInFile(file, charset, cssQuery, typeAttributeKey)));
        return result;
    }

    private List<QuestionInfo> selectQuestionInfo(String filePath, String htmlStr, String cssQuery,
        String typeAttributeKey) {
        Document doc = Jsoup.parse(htmlStr);
        return doc.select(cssQuery).stream().map(s -> QuestionInfo.builder()
            .context(s.text())
            .type(s.attributes().get(typeAttributeKey))
            .filePath(filePath).build()).collect(Collectors.toList());
    }
}
