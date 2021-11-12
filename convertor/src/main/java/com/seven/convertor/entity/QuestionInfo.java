package com.seven.convertor.entity;

import java.util.Objects;

import cn.hutool.json.JSONObject;
import lombok.Builder;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author y30016814
 * @since 2021/11/11 14:19
 */
@Data
@Builder
@Accessors(chain = true)
public class QuestionInfo {

    private String context;
    private String type;
    private JSONObject otherData;
    private String filePath;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        QuestionInfo that = (QuestionInfo) o;
        return Objects.equals(context, that.context);
    }

    @Override
    public int hashCode() {
        return Objects.hash(context);
    }
}
