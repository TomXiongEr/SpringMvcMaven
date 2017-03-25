package com.xm.springmvc.common.cache;



import java.io.Serializable;
import java.util.Collection;

import org.apache.log4j.Logger;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * Created by chenjie on 2016/11/14.
 */
public class RedisUtil {
    private final Logger logger = Logger.getLogger(RedisUtil.class);
    private static RedisTemplate<Serializable, Object> redisTemplate;
    
    
    public static Object  get(String key) {
        Object value = redisTemplate.opsForValue().get(key);
        return value;
    }
     
    public static  void set(String key,Object obj) {
        if (obj == null) {
            return;
        }
        redisTemplate.opsForValue().set(key, obj); 
    }
     
    public static void delete(String key) {
        redisTemplate.delete(key);
    }

    public static void delete(Collection<String> keys) {
    	for(String key:keys){
          redisTemplate.delete(key);
    	}
    }
    

    public void setRedisTemplate(
            RedisTemplate<Serializable, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }
}
