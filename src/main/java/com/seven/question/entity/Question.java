package com.seven.question.entity;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
/**
 * <p>
 * 
 * </p>
 *
 * @author seven
 * @since 2021-10-11
 */
@TableName("question")
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
    private String suject;

    /**
     * 题型
     */
    private String qType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getParsing() {
        return parsing;
    }

    public void setParsing(String parsing) {
        this.parsing = parsing;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getOriginalInformation() {
        return originalInformation;
    }

    public void setOriginalInformation(String originalInformation) {
        this.originalInformation = originalInformation;
    }

    public String getSuject() {
        return suject;
    }

    public void setSuject(String suject) {
        this.suject = suject;
    }

    public String getqType() {
        return qType;
    }

    public void setqType(String qType) {
        this.qType = qType;
    }

    @Override
    public String toString() {
        return "Question{" +
        ", id=" + id +
        ", title=" + title +
        ", options=" + options +
        ", answer=" + answer +
        ", parsing=" + parsing +
        ", remark=" + remark +
        ", originalInformation=" + originalInformation +
        ", suject=" + suject +
        ", qType=" + qType +
        "}";
    }
}
