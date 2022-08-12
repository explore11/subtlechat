package top.song.chat.api.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;

/**
 * 封装fastjson的方法，若需要换Json工具，也不需要到处改
 */
public class JsonUtil extends JSON {


    public static String parseToString(Object object) {

        return toJSONString(object);

    }

    public static <T> T parseToObject(String text, Class<T> clazz) {
        return parseObject(text, clazz);
    }

}
