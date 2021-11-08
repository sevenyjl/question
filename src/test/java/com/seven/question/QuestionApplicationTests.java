package com.seven.question;

import cn.hutool.core.io.FileUtil;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.seven.question.entity.Question;
import com.seven.question.service.QuestionService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@SpringBootTest
class QuestionApplicationTests {

    @Test
    void contextLoads() {
    }

    @Autowired
    QuestionService questionService;


    @Test
    void sort() {
        int id = 1;
        List<String> strings = FileUtil.readLines("D:\\my\\question-master\\src\\main\\resources\\sql\\question.sql", StandardCharsets.UTF_8);
        for (String string : strings) {
            String str = "INSERT INTO `question` VALUES (";
            int i = string.indexOf(str);
            if (i != -1) {
                FileUtil.appendString(str + id + string.substring(string.indexOf(", '")) + "\n", "D:\\my\\question-master\\src\\main\\resources\\sql\\question2.sql", StandardCharsets.UTF_8);
                id++;
            }
        }
    }

    @Test
    void listSameQuestion() {
        // 使用前请备份数据
        List<Question> list = questionService.list();
        Map<String, List<Question>> collect = list.stream()
                .collect(Collectors.groupingBy(s -> s.getTitle() + s.getOptions()));
        collect.forEach((k, v) -> {
            if (v.size() > 1) {
                v.remove(0);
                List<Integer> idList = v.stream().map(Question::getId).collect(Collectors.toList());
                // 创建sql
                String select = "select * from question where id in ";
                String delete = "delete from question where id in ";
                String idStr = idList.toString().replace("[", "(").replace("]", ");");
                System.out.println(select + idStr);
                System.out.println(delete + idStr);
                questionService.removeByIds(idList);
            }
        });
    }

}
