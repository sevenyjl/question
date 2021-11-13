package com.seven.question.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.seven.question.entity.OptionInfo;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
public interface OptionService extends IService<OptionInfo> {

    List<OptionInfo> listByQuestionId(Integer questionId);
}
