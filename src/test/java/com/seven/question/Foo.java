package com.seven.question;

import java.io.File;
import java.io.FileFilter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

import cn.hutool.core.io.FileUtil;

public class Foo {
    public static void main(String[] args) {
        Comparator<Integer> df = new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o1 > o2 ? 1 :
                        (o1 == o2) ?
                                0 : -1;
            }
        };
        System.out.println(df.compare(new Integer(1),new Integer(1)));
        System.out.println(df.compare(1,1));
    }

    public static double sqrt(double a) {
        return Math.sqrt(a);
    }

}
