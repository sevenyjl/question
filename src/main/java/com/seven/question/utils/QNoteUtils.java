package com.seven.question.utils;

import cn.hutool.core.io.FileUtil;
import cn.hutool.json.JSONUtil;
import com.seven.question.entity.QNoteEntity;
import lombok.NonNull;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class QNoteUtils {

    public static List<QNoteEntity> paresJsonStr(String jsonStr) {
        if (jsonStr.startsWith("[")) {
            return JSONUtil.parseArray(jsonStr).toList(QNoteEntity.class);
        } else {
            return new ArrayList<>();
        }
    }

    public static String paresJson(@NonNull List<QNoteEntity> qNoteEntities) {
        return JSONUtil.toJsonStr(qNoteEntities);
    }
}
