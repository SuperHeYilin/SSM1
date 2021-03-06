package dao;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *
 * @author: superhe
 * @description:
 * @date: 22:03 2018/5/22
 *
 * 配置spring和junit整合，junit启动时加载springIOC容器 spring-test,junit
 */
@RunWith(SpringJUnit4ClassRunner.class)
/**
 * 告诉junit spring配置文件
 */
@ContextConfiguration({ "classpath:spring-dao.xml", "classpath:spring-service.xml" })
public class BaseTest {

}
