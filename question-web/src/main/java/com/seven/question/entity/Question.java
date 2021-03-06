package com.seven.question.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import lombok.*;
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
@NoArgsConstructor
@AllArgsConstructor
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

    private Boolean hideAnswer;
    /**
     * 1 收藏；0 不收藏
     */
    private Boolean likeable;
    /**
     * 1 存疑；0 不存疑
     * 存疑表示，不确定答案，待资料验证
     */
    private Boolean doubtful;

    private int errorTimes;
    private int rightTimes;
    private int doubtedTimes;

    @TableField(exist = false)
    private List<OptionInfo> optionInfoList=new ArrayList<>();
}
