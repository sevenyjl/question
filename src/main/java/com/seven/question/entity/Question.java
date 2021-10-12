package com.seven.question.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * <p>
 *
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@TableName("question")
@Getter
@Setter
@Accessors(chain = true)
@ToString
public class Question implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 题目
     */
    private String title;

    /**
     * 选项
     */
    private String options;

    /**
     * 答案
     */
    private String answer;

    /**
     * 解析
     */
    private String parsing;

    /**
     * 备注
     */
    private String remark;

    /**
     * 原始信息
     */
    private String originalInformation;

    /**
     * 科目
     */
    private String subject;

    /**
     * 题型
     */
    private QuestionType qType;

    private boolean hideAnswer;

}
