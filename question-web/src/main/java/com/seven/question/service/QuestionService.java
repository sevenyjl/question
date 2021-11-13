package com.seven.question.service;

import com.seven.question.entity.Question;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
public interface QuestionService extends IService<Question> {
    void fengList(List<Question> list);
}
