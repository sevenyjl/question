package com.seven.question.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.TableFieldInfo;
import com.seven.question.entity.OptionInfo;
import com.seven.question.entity.Question;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.function.Predicate;

@AllArgsConstructor
@Getter
public class QuestionSelectWrapper extends QueryWrapper<Question> {
    private final String searchKey;
}
