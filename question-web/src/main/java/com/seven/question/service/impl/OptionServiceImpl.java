package com.seven.question.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.seven.question.entity.OptionInfo;
import com.seven.question.mapper.OptionMapper;
import com.seven.question.service.OptionService;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@Service
public class OptionServiceImpl extends ServiceImpl<OptionMapper, OptionInfo> implements OptionService {

    @Override
    public List<OptionInfo> listByQuestionId(Integer questionId) {
        return list(new QueryWrapper<OptionInfo>().lambda().eq(OptionInfo::getQuestionId, questionId));
    }
}
