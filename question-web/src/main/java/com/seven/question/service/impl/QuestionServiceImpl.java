package com.seven.question.service.impl;

import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.seven.question.entity.OptionInfo;
import com.seven.question.entity.Question;
import com.seven.question.mapper.QuestionMapper;
import com.seven.question.service.OptionService;
import com.seven.question.service.QuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
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


    private void fengList(List<Question> list) {
        list.forEach(this::fengQuestion);
    }

    private Question fengQuestion(Question question) {
        return question.setOptionInfoList(optionService.listByQuestionId(question.getId()).stream().sorted((o1, o2) -> RandomUtil.randomBoolean() ? -1 : 1).collect(Collectors.toList()));
    }


}
