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

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import cn.hutool.core.util.RandomUtil;
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

    private static final ArrayList<String> subject = new ArrayList<>();

    public static ArrayList<String> getSubject() {
        return subject;
    }

    static {
        subject.add("科目1");
        subject.add("科目2");
        subject.add("科目3");
        subject.add("科目4");
        subject.add("综合随机");
    }

    @GetMapping("index")
    public String index(Model model) {
        // Page<Question> page = questionService.page(new Page<>(0, 5));
        // List<Question> list = page.getRecords();
        // model.addAttribute("list", list);
        return "index";
    }

    @GetMapping("exams")
    public String exams(Model model) {
        // Page<Question> page = questionService.page(new Page<>(0, 5));
        // List<Question> list = page.getRecords();
        // model.addAttribute("list", list);
        return "exams";
    }

    @GetMapping("listExams")
    @ResponseBody
    public ResponseEntity listExams(
            @RequestParam() String subject,
            @RequestParam(required = false) Integer error,
            @RequestParam(required = false) Integer right,
            @RequestParam(required = false) Integer doubted
    ) {
        QueryWrapper<Question> questionQueryWrapper = new QueryWrapper<>();
        if (StrUtil.isNotEmpty(subject) && !"综合随机".equals(subject)) {
            questionQueryWrapper.lambda().eq(Question::getSubject, subject);
        }
        if (error != null) {
            questionQueryWrapper.lambda().ge(Question::getErrorTimes, error);
        }
        if (right != null) {
            questionQueryWrapper.lambda().le(Question::getRightTimes, right);
        }
        if (doubted != null) {
            questionQueryWrapper.lambda().ge(Question::getDoubtedTimes, doubted);
        }
        List<Question> list = questionService.list(questionQueryWrapper);
        ArrayList<Question> result = new ArrayList<>();
        list.sort((o1, o2) -> RandomUtil.randomInt(-10, 10));
        for (Question question : list) {
            if (result.size() != 50) {
                question.setHideAnswer(true);
                result.add(question);
            } else {
                return new ResponseEntity(result, HttpStatus.OK);
            }
        }
        return new ResponseEntity(result, HttpStatus.OK);
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

    @GetMapping("listSubject")
    @ResponseBody
    public ResponseEntity listSubject() {
        return new ResponseEntity(subject, HttpStatus.OK);
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
        question.setDoubtful(question.getDoubtful() == null || question.getDoubtful());
        question.setLikeable(question.getLikeable() == null || question.getLikeable());
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

    @GetMapping("answer")
    @ResponseBody
    public ResponseEntity answer(@RequestParam int id, @RequestParam String answered) {
        Question byId = questionService.getById(id);
        if (byId != null) {
            if (byId.getAnswer().length() == answered.length()) {
                String[] split = byId.getAnswer().split("");
                for (String s : answered.split("")) {
                    boolean isMatch = false;
                    for (String s1 : split) {
                        if (s1.equalsIgnoreCase(s)) {
                            isMatch = true;
                            break;
                        }
                    }
                    if (!isMatch) {
                        // 错误统计
                        count(id, "error");
                        return new ResponseEntity(false, HttpStatus.OK);
                    }
                }
                count(id, "right");
                return new ResponseEntity(true, HttpStatus.OK);
            } else {
                // 错误统计
                count(id, "error");
                return new ResponseEntity(false, HttpStatus.OK);
            }
        }
        return new ResponseEntity("找不到对应数据", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    /**
     * @param type error,right,doubted
     * @return
     */
    @GetMapping("count")
    @ResponseBody
    public ResponseEntity count(@RequestParam int id, @RequestParam String type) {
        Question byId = questionService.getById(id);
        Question temp = new Question();
        temp.setId(id);
        if (byId != null) {
            temp.setErrorTimes(byId.getErrorTimes());
            temp.setDoubtedTimes(byId.getDoubtedTimes());
            temp.setRightTimes(byId.getRightTimes());
            switch (type) {
                case "error":
                    int errorTimes = byId.getErrorTimes();
                    temp.setErrorTimes(++errorTimes);
                    break;
                case "right":
                    int rightTimes = byId.getRightTimes();
                    temp.setRightTimes(++rightTimes);
                    break;
                case "doubted":
                    int doubtedTimes = byId.getDoubtedTimes();
                    temp.setDoubtedTimes(++doubtedTimes);
                    break;
                default:
                    return new ResponseEntity("找不到对应数据", HttpStatus.INTERNAL_SERVER_ERROR);
            }
            questionService.updateById(temp);
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity("找不到对应数据", HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
