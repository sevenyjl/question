package com.seven.question.controller;

import cn.hutool.core.util.StrUtil;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.seven.question.service.QuestionService;
import com.seven.question.entity.Question;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
    public String index(@RequestParam(required = false) boolean hideAnswer, Model model) {

        List<Question> list = questionService.list();
        if (hideAnswer){
            list.forEach(s-> s.setHideAnswer(true));
        }
        model.addAttribute("list", list);
        return "index";
    }

    @PostMapping("update")
    @ResponseBody
    public ResponseEntity update(@RequestBody Question question) {
        questionService.updateById(question);
        return new ResponseEntity(HttpStatus.OK);
    }

}
