package com.seven.question.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.resource.ClassPathResource;
import cn.hutool.core.util.StrUtil;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.seven.question.entity.QNoteEntity;
import com.seven.question.utils.QNoteUtils;
import com.seven.question.utils.SqlUtil;

import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.seven.question.service.QuestionService;
import com.seven.question.entity.Question;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@Controller
@RequestMapping("/question")
public class QuestionAction {

    @Autowired
    private QuestionService questionService;

    @GetMapping("index")
    public String index(
        @RequestParam(required = false) boolean hideAnswer, Model model) {
        List<Question> list = questionService.list();
        if (hideAnswer) {
            list.forEach(s -> s.setHideAnswer(true));
        }
        model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("list")
    @ResponseBody
    public ResponseEntity list(
        @RequestParam(required = false) boolean hideAnswer,
        @RequestParam(required = false) Boolean likeable,
        @RequestParam(required = false) Boolean doubtful) {
        QueryWrapper<Question> questionQueryWrapper = new QueryWrapper<>();
        if (likeable != null) {
            questionQueryWrapper.lambda().eq(Question::getLikeable, likeable);
        }
        if (doubtful != null) {
            questionQueryWrapper.lambda().eq(Question::getDoubtful, doubtful);
        }
        List<Question> list = questionService.list(questionQueryWrapper);
        list.forEach(s -> s.setHideAnswer(hideAnswer));
        return new ResponseEntity(list, HttpStatus.OK);
    }

    @PostMapping("update")
    @ResponseBody
    public ResponseEntity update(@RequestBody Question question) {
        questionService.updateById(question);
        return new ResponseEntity(HttpStatus.OK);
    }

    @PostMapping("parseQNote")
    @ResponseBody
    public ResponseEntity update(@RequestBody List<QNoteEntity> qNoteEntities) {
        List<Question> collect = qNoteEntities.stream().map(QNoteEntity::pares2Question).collect(Collectors.toList());
        questionService.saveBatch(collect);
        SqlUtil.writeSql(SqlUtil.getListSql(collect));
        return new ResponseEntity(HttpStatus.OK);
    }

}
