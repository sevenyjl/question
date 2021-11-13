package com.seven.question.controller;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.seven.question.entity.OptionInfo;
import com.seven.question.entity.QNoteEntity;
import com.seven.question.entity.Question;
import com.seven.question.entity.QuestionType;
import com.seven.question.service.OptionService;
import com.seven.question.service.QuestionSelectWrapper;
import com.seven.question.service.QuestionService;
import com.seven.question.utils.SqlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Comparator;
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
            @RequestParam(required = false, defaultValue = "10") int pageSize,
            @RequestParam(required = false) String searchKey
    ) {
        QuestionSelectWrapper questionQueryWrapper = new QuestionSelectWrapper(searchKey);
        if (StrUtil.isNotEmpty(searchKey)) {
            questionQueryWrapper.lambda().like(Question::getTitle, searchKey);
        }
        Page<Question> page = questionService.page(new Page<>(pageNo, pageSize), questionQueryWrapper);
        page.getRecords().forEach(s -> s.setHideAnswer(true));
        return new ResponseEntity(page, HttpStatus.OK);
    }

    @GetMapping("listExams")
    public ResponseEntity listExams(
            @RequestParam String subject
    ) {
        if (QuestionAction.getSubject().contains(subject)) {
            Page<Question> page = questionService.page(new Page<>(0, 50), new QueryWrapper<Question>().lambda()
                    .eq(Question::getSubject, subject).last(" order by rand()"));
            List<Question> records = page.getRecords();
            questionService.fengList(records);
            records.forEach(s -> s.setHideAnswer(true));
            return new ResponseEntity(records, HttpStatus.OK);
        }
        return new ResponseEntity("无效科目", HttpStatus.BAD_REQUEST);
    }

    @PostMapping("update")
    public ResponseEntity update(@RequestBody Question question) {
        return new ResponseEntity(
                questionService.updateById(question) &&
                        optionService.updateBatchById(question.getOptionInfoList())
                , HttpStatus.OK);
    }

    @GetMapping("get/{id}")
    public ResponseEntity getById(@PathVariable String id) {
        return new ResponseEntity(questionService.getById(id), HttpStatus.OK);
    }

    @PostMapping("checkAnswer")
    public ResponseEntity checkAnswer(@RequestBody Question question) {
        List<OptionInfo> list = optionService.list(new QueryWrapper<OptionInfo>().lambda().eq(OptionInfo::getQuestionId, question.getId()));
        boolean match = list.stream()
                .allMatch(optionInfo -> question.getOptionInfoList().stream()
                        .filter(optionInfo1 -> optionInfo1.getId().equals(optionInfo.getId()))
                        .allMatch(optionInfo1 -> optionInfo1.getSelected() == optionInfo.getSelected()));
        if (!match) {
            // TODO: 2021/11/13 统计错误
        }
        return new ResponseEntity(match, HttpStatus.OK);
    }

}
