package com.seven.question;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.StrUtil;

import java.io.File;
import java.io.FileFilter;

public class MyEncryptedUtils {
    public static void main(String[] args) {
        StringBuilder stringBuilder = new StringBuilder();
        FileUtil.loopFiles(new File("E:\\aaa-project\\question\\src\\main\\resources"), new FileFilter() {
            @Override
            public boolean accept(File pathname) {
                return pathname.getName().contains(".seven");
            }
        }).forEach(f -> stringBuilder.append(FileUtil.readUtf8String(f)));
        System.out.println(decode(stringBuilder.toString()));
    }

    public static String encrypted(String s) {
        int i = Math.abs(s.hashCode() % 107);
        return (char) i + encrypted(s, i);
    }

    public static String decode(String s) {
        char c = s.charAt(0);
        return decode(s.substring(1), c);
    }

    public static String encrypted(String s, int num) {
        if (StrUtil.isEmpty(s)) {
            return s;
        }
        char c = s.charAt(0);
        num = num + c;
        char[] chars = s.toCharArray();
        StringBuilder stringBuilder = new StringBuilder();
        for (char aChar : chars) {
            stringBuilder.append((char) (((int) aChar) + num));
        }
        return stringBuilder.toString();
    }

    public static String decode(String s, int num) {
        if (StrUtil.isEmpty(s)) {
            return s;
        }
        char c = s.charAt(0);
        num = (c - num) / 2 + num;
        char[] chars = s.toCharArray();
        StringBuilder stringBuilder = new StringBuilder();
        for (char aChar : chars) {
            stringBuilder.append((char) (((int) aChar) - num));
        }
        return stringBuilder.toString();
    }

}