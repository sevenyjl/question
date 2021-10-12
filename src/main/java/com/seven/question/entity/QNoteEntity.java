package com.seven.question.entity;

import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@TableName("question")
@Accessors(chain = true)
@Getter
@Setter
@ToString
public class QNoteEntity {
    private String content;
    private Boolean isHide;
    private int id;
    private String time;
    private String host;

    public Question pares2Question() {
        char[] chars = content.toCharArray();
        StringBuilder stringBuilder = new StringBuilder();
        int answer = 0;
        for (int i = 0; i < chars.length; i++) {
            char aChar = chars[i];
            //just 判断选项
            if (chars[i] >= 'A' && chars[i] <= 'K') {
                stringBuilder.append(aChar);
            } else if (chars[i] > 127) {
//                System.out.println(aChar + "=" + (int) (aChar));
                break;
            } else {
                System.err.println("解析可能错误：`" + aChar + "`");
                break;
            }
            answer = i;
        }
        String titleTemp = content.substring(answer + 1);
        char[] chars1 = titleTemp.toCharArray();
        int options = -1;
        for (int i = 0; i < chars1.length; i++) {
            if (chars[i] == 'A') {
                options = i;
            }
        }
        if (options == -1) {
            throw new RuntimeException("没有选择的答案，解析错误：" + titleTemp);
        }
        return new Question()
                .setAnswer(stringBuilder.toString())
                .setTitle(titleTemp.substring(0, options - 1))
                .setOptions(titleTemp.substring(options - 1))
                .setOriginalInformation(content)
                .setQType(stringBuilder.length() == 1 ? QuestionType.SINGLE_CHOICE : QuestionType.MULTI_CHOICE)
                .setHideAnswer(true);
    }

}
