package com.seven.question.service.impl;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.seven.question.entity.OptionInfo;
import com.seven.question.entity.Question;
import com.seven.question.mapper.QuestionMapper;
import com.seven.question.service.OptionService;
import com.seven.question.service.QuestionSelectWrapper;
import com.seven.question.service.QuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService {
    @Autowired
    OptionService optionService;

    @Override
    public List<Question> list() {
        List<Question> list = super.list();
        fengList(list);
        return list;
    }

    @Override
    public List<Question> list(Wrapper<Question> queryWrapper) {
        checkWrapper(queryWrapper);
        List<Question> list = super.list(queryWrapper);
        fengList(list);
        return list;
    }

    @Override
    public List<Question> listByIds(Collection<? extends Serializable> idList) {
        List<Question> list = super.listByIds(idList);
        fengList(list);
        return list;
    }

    @Override
    public List<Question> listByMap(Map<String, Object> columnMap) {
        List<Question> list = super.listByMap(columnMap);
        fengList(list);
        return list;
    }

    @Override
    public Question getById(Serializable id) {
        Question question = super.getById(id);
        return question == null ? null : fengQuestion(question);
    }

    @Override
    public Question getOne(Wrapper<Question> queryWrapper) {
        Question question = super.getOne(queryWrapper);
        return question == null ? null : fengQuestion(question);
    }

    @Override
    public <E extends IPage<Question>> E page(E page, Wrapper<Question> queryWrapper) {
        checkWrapper(queryWrapper);
        E e = super.page(page, queryWrapper);
        fengList(e.getRecords());
        return e;
    }

    @Override
    public <E extends IPage<Question>> E page(E page) {
        E e = super.page(page);
        fengList(e.getRecords());
        return e;
    }

    private void checkWrapper(Wrapper<Question> queryWrapper) {
        if (queryWrapper instanceof QuestionSelectWrapper) {
            QuestionSelectWrapper questionSelectWrapper = (QuestionSelectWrapper) queryWrapper;
            if (StrUtil.isNotEmpty(questionSelectWrapper.getSearchKey())) {
                Set<Integer> collect = optionService.list(new QueryWrapper<OptionInfo>().lambda()
                        .like(OptionInfo::getContext, questionSelectWrapper.getSearchKey()))
                        .stream().map(OptionInfo::getQuestionId).collect(Collectors.toSet());
                questionSelectWrapper.lambda().or().in(Question::getId, collect);
            }
        }
    }

    public void fengList(List<Question> list) {
        list.forEach(this::fengQuestion);
    }

    private Question fengQuestion(Question question) {
        return question.setOptionInfoList(optionService.list(new QueryWrapper<OptionInfo>().lambda()
                .eq(OptionInfo::getQuestionId, question.getId())
                .last(" order by rand()")));
    }


}
