package com.seven.convertor.starter.run;

import com.seven.convertor.core.ConvertorRunner;
import com.seven.convertor.starter.configuration.ParsesArgsProperties;

/**
 * @author y30016814
 * @since 2021/11/11 9:57
 */
public class SevenApplication {
    public static void run(String[] args) {
        ParsesArgsProperties.init(args);
        ConvertorRunner.run();
    }
}
