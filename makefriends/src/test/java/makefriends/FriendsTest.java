package makefriends;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.bean.Friends;
import com.yc.bean.User;
import com.yc.biz.FriendsBiz;
import com.yc.biz.impl.FriendsBizImpl;


@RunWith(SpringJUnit4ClassRunner.class)	
@ContextConfiguration(locations = { "classpath*:applicationContext*.xml"})
public class FriendsTest {
	
	@Resource(name="friendsBizImpl")
	private FriendsBiz friendsBiz;
	
	@Test
	public void TestInsertFriends(){
		Friends f = new Friends(1,2,1);
		friendsBiz.insertFriends(f);
	}
	
	@Test
	public void TestSearchAllFriends(){
		List<User> users= friendsBiz.search(1);
	}

}
