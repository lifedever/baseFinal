package io.github.eternalpro.utils;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;

/**
 * 字符串工具类
 * Created by gefangshuai on 2015/3/26.
 */
public class StrUtils {

    private static int length = 200;    // 摘要200个字符
    public static String getAbstract(String content) {
        return getAbstract(content, length);
    }

    public static String getAbstract(String content, int length) {
        if(StringUtils.isNotBlank(content))
        content = Jsoup.parse(content).text();  // 过滤html代码
        if (StringUtils.isNoneBlank(content)) {
            if (content.length() <= length) {
                return content;
            }else {
                return content.substring(0, length - 1) + "...";
            }
        }
        return content;
    }

}
