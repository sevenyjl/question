package com.seven.question.service.impl;

import com.seven.question.entity.Question;
import com.seven.question.mapper.QuestionMapper;
import com.seven.question.service.QuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService {

}
