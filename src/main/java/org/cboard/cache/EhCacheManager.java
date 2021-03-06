package org.cboard.cache;

import java.net.URL;
import java.util.Date;
import org.ehcache.Cache;
import org.ehcache.config.Configuration;
import org.ehcache.config.builders.CacheManagerBuilder;
import org.ehcache.xml.XmlConfiguration;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

/**
 * Created by yfyuan on 2017/2/4.
 */
public class EhCacheManager<T> implements CacheManager<T>, InitializingBean, DisposableBean {

  private static org.ehcache.CacheManager myCacheManager;

  static {
    final URL myUrl = EhCacheManager.class.getResource("/ehcache.xml");
    Configuration xmlConfig = new XmlConfiguration(myUrl);
    myCacheManager = CacheManagerBuilder.newCacheManager(xmlConfig);
    myCacheManager.init();
  }

  private Cache<String, CacheObject> cache;
  private String cacheAlias;

  @Override
  public void put(String key, T data, long expire) {
    cache.put(key, new CacheObject(new Date().getTime(), expire, data));
  }

  @Override
  public T get(String key) {
    CacheObject o = cache.get(key);
    if (o == null || new Date().getTime() >= o.getT1() + o.getExpire()) {
      return null;
    } else {
      return (T) o.getD();
    }
  }

  @Override
  public void remove(String key) {
    cache.remove(key);
  }

  public void setCacheAlias(String cacheAlias) {
    this.cacheAlias = cacheAlias;
  }

  @Override
  public void afterPropertiesSet() throws Exception {
    cache = myCacheManager.getCache(cacheAlias, String.class, CacheObject.class);
  }

  @Override
  public void destroy() throws Exception {
    EhCacheManager.myCacheManager.close();
  }
}
