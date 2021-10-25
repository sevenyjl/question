package com.seven.question.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.seven.question.entity.QNoteEntity;
import com.seven.question.entity.Question;
import com.seven.question.entity.QuestionType;
import com.seven.question.service.QuestionService;
import com.seven.question.utils.SqlUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.stream.Collectors;

import cn.hutool.core.util.StrUtil;

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
    public String index(Model model) {
        // Page<Question> page = questionService.page(new Page<>(0, 5));
        // List<Question> list = page.getRecords();
        // model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("list")
    @ResponseBody
    public ResponseEntity list(
        @RequestParam(required = false, defaultValue = "0") int pageNo,
        @RequestParam(required = false, defaultValue = "10") int pageSize,
        @RequestParam(required = false) boolean hideAnswer,
        @RequestParam(required = false) Boolean likeable,
        @RequestParam(required = false) Boolean doubtful,
        @RequestParam(required = false) String searchWord
    ) {
        QueryWrapper<Question> questionQueryWrapper = new QueryWrapper<>();
        if (likeable != null) {
            questionQueryWrapper.lambda().eq(Question::getLikeable, likeable);
        }
        if (doubtful != null) {
            questionQueryWrapper.lambda().eq(Question::getDoubtful, doubtful);
        }
        if (StrUtil.isNotEmpty(searchWord)) {
            questionQueryWrapper.lambda()
                .like(Question::getTitle, searchWord)
                .or()
                .like(Question::getOptions, searchWord);
        }
        Page<Question> page = questionService.page(new Page<>(pageNo, pageSize), questionQueryWrapper);
        page.getRecords().forEach(s -> s.setHideAnswer(hideAnswer));
        return new ResponseEntity(page, HttpStatus.OK);
    }

    @PostMapping("update")
    @ResponseBody
    public ResponseEntity update(@RequestBody Question question) {
        questionService.updateById(question);
        return new ResponseEntity(HttpStatus.OK);
    }

    @PostMapping("save")
    @ResponseBody
    public ResponseEntity save(@RequestBody Question question) {
        question.setHideAnswer(question.getHideAnswer() == null || question.getHideAnswer());
        if (question.getQType() == null) {
            question.setQType(
                question.getAnswer().length() == 1 ? QuestionType.SINGLE_CHOICE : QuestionType.MULTI_CHOICE);
        }
        questionService.save(question);
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
