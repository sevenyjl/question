package com.seven.question.controller;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.seven.question.entity.QNoteEntity;
import com.seven.question.entity.Question;
import com.seven.question.entity.QuestionType;
import com.seven.question.service.OptionService;
import com.seven.question.service.QuestionService;
import com.seven.question.utils.SqlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
@RestController
@RequestMapping("/v2/question")
public class QuestionActionV2 {

    @Autowired
    private QuestionService questionService;
    @Autowired
    private OptionService optionService;

    @GetMapping("page")
    public ResponseEntity page(
            @RequestParam(required = false, defaultValue = "0") int pageNo,
            @RequestParam(required = false, defaultValue = "10") int pageSize
    ) {
        QueryWrapper<Question> questionQueryWrapper = new QueryWrapper<>();
        Page<Question> page = questionService.page(new Page<>(pageNo, pageSize), questionQueryWrapper);
        page.getRecords().forEach(s -> s.setHideAnswer(true));
        return new ResponseEntity(page, HttpStatus.OK);
    }

    @PostMapping("update")
    public ResponseEntity update(@RequestBody Question question) {
        return new ResponseEntity(
                questionService.updateById(question) &&
                        optionService.updateBatchById(question.getOptionInfoList())
                , HttpStatus.OK);
    }

}
