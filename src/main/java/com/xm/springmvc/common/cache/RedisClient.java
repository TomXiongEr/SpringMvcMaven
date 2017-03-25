package com.xm.springmvc.common.cache;

import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import com.alibaba.fastjson.JSON;

public class RedisClient {
	
	        private  static  JedisPool jedisPool; // 池化管理jedis链接池
	        
	        //使用构造方法来初始化jedisPool;
	        public  RedisClient(JedisConnectionFactory jedisConnectionFactory){
	        	jedisPool=new JedisPool(jedisConnectionFactory.getPoolConfig()
	        			,jedisConnectionFactory.getHostName(),
	        			jedisConnectionFactory.getPort());
	        }
	        
	        
			/**
			 * 向缓存中设置字符串内容
			 * @param key key
			 * @param value value
			 * @return
			 * @throws Exception
			 */
			public static boolean  set(String key,String value) throws Exception{
				Jedis jedis = null;
				try {
					jedis = jedisPool.getResource();
					jedis.set(key, value);
					return true;
				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}finally{
					jedisPool.returnResource(jedis);
				}
			}
			
			/**
			 * 向缓存中设置对象
			 * @param key 
			 * @param value
			 * @return
			 */
			public static boolean  set(String key,Object value){
				Jedis jedis = null;
				try {
					String objectJson = JSON.toJSONString(value);
					jedis = jedisPool.getResource();
					jedis.set(key, objectJson);
					return true;
				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}finally{
					jedisPool.returnResource(jedis);
				}
			}
			
			/**
			 * 删除缓存中得对象，根据key
			 * @param key
			 * @return
			 */
			public static boolean remove(String key){
				Jedis jedis = null;
				try {
					jedis = jedisPool.getResource();
					jedis.del(key);
					return true;
				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}finally{
					jedisPool.returnResource(jedis);
				}
			}
			
			/**
			 * 根据key 获取内容
			 * @param key
			 * @return
			 */
			public static Object get(String key){
				Jedis jedis = null;
				try {
					jedis = jedisPool.getResource();
					Object value = jedis.get(key);
					return value;
				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}finally{
					jedisPool.returnResource(jedis);
				}
			}
			

			/**
			 * 根据key 获取对象
			 * @param key
			 * @return
			 */
			public static <T> T get(String key,Class<T> clazz){
				Jedis jedis = null;
				try {
					jedis = jedisPool.getResource();
					String value = jedis.get(key);
					return JSON.parseObject(value, clazz);
				} catch (Exception e) {
					e.printStackTrace();
					return null;
				}finally{
					jedisPool.returnResource(jedis);
				}
			}

			public static void setJedisPool(JedisPool jedisPool) {
				RedisClient.jedisPool = jedisPool;
			}		
}
