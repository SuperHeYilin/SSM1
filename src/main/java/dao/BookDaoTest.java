package dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.Book;

import java.util.List;

/**
 * @author: superhe
 * @description:
 * @date: 22:04 2018/5/22
 */
public class BookDaoTest extends dao.BaseTest {

	@Autowired
	private BookDao bookDao;

	@Test
	public void testQueryById() throws Exception {
		long bookId = 1000;
		System.out.println(bookDao);
		Book book = bookDao.queryById(bookId);
		System.out.println(book);
	}

	@Test
	public void testQueryAll() throws Exception {
		List<Book> books = bookDao.queryAll(0, 4);
		for (Book book : books) {
			System.out.println(book);
		}
	}

	@Test
	public void testReduceNumber() throws Exception {
		long bookId = 1000;
		int update = bookDao.reduceNumber(bookId);
		System.out.println("update=" + update);
	}
}
