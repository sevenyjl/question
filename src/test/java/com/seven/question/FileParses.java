package com.seven.question;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.seven.question.entity.QNoteEntity;
import com.seven.question.entity.Question;
import com.seven.question.entity.QuestionType;
import com.seven.question.service.QuestionService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import cn.hutool.core.io.FileUtil;
import cn.hutool.json.JSONUtil;

/**
 * @author y30016814
 * @since 2021/10/30 11:09
 */
@SpringBootTest
public class FileParses {
    @Autowired
    QuestionService questionService;

    @Test
    void t2() {
        List<Question> list = questionService.list(new QueryWrapper<Question>().lambda()
            .eq(Question::getRemark, "科目二来着熊绒的博客"));
        list.forEach(s -> {
            s.setQType(s.getAnswer().length() == 1 ? QuestionType.SINGLE_CHOICE : QuestionType.MULTI_CHOICE);
            questionService.updateById(s);
        });
    }

    @Test
    void t1() {
        String file = "D:\\my\\question-master\\src\\test\\resources\\T1";
        List<String> strings = FileUtil.readLines(file, StandardCharsets.UTF_8);
        ArrayList<Question> result = new ArrayList<>();
        Question question = null;
        boolean jx = false;
        for (String string : strings) {
            try {
                string = string.trim();
                if (!string.equals("")) {
                    if (question == null) {
                        question = new Question().setRemark("科目二来着熊绒的博客");
                        result.add(question);
                        int indexOf = string.lastIndexOf("(");
                        int indexOf2 = string.lastIndexOf(")");
                        String answer = string.substring(indexOf + 1, indexOf2);
                        question.setAnswer(answer)
                            .setQType(answer.length() == 1 ? QuestionType.SINGLE_CHOICE : QuestionType.MULTI_CHOICE);
                        question.setTitle(string.substring(string.indexOf(" "), indexOf).trim());
                    } else {
                        if (string.startsWith("A.")) {
                            question.setOptions(string);
                        } else if (question.getOptions() == null) {
                            question.setTitle(question.getTitle() + "\n" + string);
                        } else if (string.matches("^\\d+\\..*")) {
                            // System.out.println("-----------------------------------------");
                            // System.out.println(question);
                            question = new Question().setRemark("科目二来着熊绒的博客");
                            result.add(question);
                            int indexOf = string.lastIndexOf("(");
                            int indexOf2 = string.lastIndexOf(")");
                            String answer = string.substring(indexOf + 1, indexOf2);
                            question.setAnswer(answer)
                                .setQType(
                                    answer.length() == 1 ? QuestionType.SINGLE_CHOICE : QuestionType.MULTI_CHOICE);
                            question.setTitle(string.substring(string.indexOf(" "), indexOf).trim());
                            jx = false;
                        } else if (string.startsWith("解析：")) {
                            jx = true;
                            question.setParsing(string);
                        } else if (jx) {
                            question.setParsing(question.getParsing() + "\n" + string);
                        } else {
                            question.setOptions(question.getOptions() + "\n" + string);
                        }
                    }
                }
            } catch (Exception e) {
                System.out.println(string);
                break;
            }
        }
        System.out.println(JSONUtil.toJsonStr(result));
        System.out.println(questionService.saveBatch(result));
    }
}
