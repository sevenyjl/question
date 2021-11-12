package com.seven.question;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.seven.question.entity.Question;
import com.seven.question.service.QuestionService;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
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
    void changeOptions() {
        List<Question> list = questionService.list();
        list.forEach(question -> {
            String options = question.getOptions();
            String[] split = options.split("\n");
            HashMap<Character, Character> changeMap = new HashMap<>();
            int start = 0;
            // 统计选项个数
            for (String s : split) {
                if (StrUtil.isNotEmpty(s)) {
                    char c = s.charAt(0);
                    if (start == 0) {
                        changeMap.put(c, c);
                        start = ++c;
                    } else if (c == start) {
                        changeMap.put(c, c);
                        start = ++c;
                    }
                }
            }
            // 随机生成
            List<Character> collect = changeMap.values()
                .stream()
                .sorted((o1, o2) -> RandomUtil.randomBoolean() ? -1 : 1)
                .collect(Collectors.toList());
            int index = 0;
            for (Character character : changeMap.keySet()) {
                changeMap.put(character, collect.get(index));
                index++;
            }
            // 生成随机选项
            HashMap<Character, String> optionsMap = new HashMap<>();
            StringBuilder tempSB = new StringBuilder();
            start = 0;
            for (String s : split) {
                if (StrUtil.isNotEmpty(s)) {
                    char c = s.charAt(0);
                    if (start == 0) {
                        Character character = changeMap.get('A');
                        s = character + s.substring(1);
                        start = ++c;
                    } else if (c == start) {
                        optionsMap.put((char) (start - 1), tempSB.toString());
                        tempSB = new StringBuilder();
                        Character character = changeMap.get(c);
                        s = character + s.substring(1);
                        start = ++c;
                    }
                }
                tempSB.append(s).append("\n");
            }
            optionsMap.put((char) (start - 1), tempSB.toString());
            // 答案获取
            String[] answerSplit = question.getAnswer().split("");
            StringBuilder answerSB = new StringBuilder();
            for (String s : answerSplit) {
                answerSB.append(changeMap.get(s.charAt(0)));
            }
            // 合成
            StringBuilder optionsSB = new StringBuilder();
            optionsMap.values().stream().sorted().forEach(optionsSB::append);

            // 解析
            String parsing = question.getParsing();
            ArrayList<String> strings = new ArrayList<>();
            StringBuilder temp = new StringBuilder();
            if (StrUtil.isNotEmpty(parsing)) {
                String[] parsingSplit = parsing.split("\n");
                for (String s : parsingSplit) {
                    if (StrUtil.isNotEmpty(s)) {
                        Character character = changeMap.get(s.charAt(0));
                        if (character != null) {
                            temp.append(character).append(s.substring(1));
                            strings.add(temp.toString());
                            temp = new StringBuilder();
                            continue;
                        }
                    }
                    temp.append(s);
                }
                strings.add(temp.toString());
                StringBuilder parsingSB = new StringBuilder();
                strings.stream().sorted().forEach(s -> parsingSB.append(s).append("\n"));
                question.setParsing(parsingSB.toString());
            }
            question.setOptions(optionsSB.toString());
            question.setAnswer(answerSB.toString());
            try {
                questionService.updateById(question);
            }catch (Exception e){
                System.out.println("保存错误："+question);
            }
        });
    }

    @Test
    void sort() {
        int id = 1;
        List<String> strings = FileUtil.readLines("D:\\my\\question-master\\src\\main\\resources\\sql\\question.sql",
            StandardCharsets.UTF_8);
        for (String string : strings) {
            String str = "INSERT INTO `question` VALUES (";
            int i = string.indexOf(str);
            if (i != -1) {
                FileUtil.appendString(str + id + string.substring(string.indexOf(", '")) + "\n",
                    "D:\\my\\question-master\\src\\main\\resources\\sql\\question2.sql", StandardCharsets.UTF_8);
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
