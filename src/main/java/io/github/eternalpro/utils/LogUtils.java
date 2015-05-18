package io.github.eternalpro.utils;

import org.apache.log4j.Logger;

/**
 * log4j工具类
 * Created by gefangshuai on 2015-05-18-0018.
 */
public class LogUtils {

    /**
     * 获取logger对象
     * @param clazz
     * @return
     */
    public static Logger getLogger(Class clazz) {
        return Logger.getLogger(clazz);
    }
}
