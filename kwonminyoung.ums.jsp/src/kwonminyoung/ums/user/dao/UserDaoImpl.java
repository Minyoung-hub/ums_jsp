package kwonminyoung.ums.user.dao;

import java.util.List;

import kwonminyoung.ums.config.Configuration;
import kwonminyoung.ums.user.dao.mapper.UserMapper;
import kwonminyoung.ums.user.domain.User;

public class UserDaoImpl implements UserDao{
	private UserMapper userMapper;
	
	public UserDaoImpl() {
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	//사용자 정보 목록을 뽑아낸다.
	//return: 사용자 정보 목록
	@Override
	public List<User> getUsers(){
		return userMapper.getUsers();
	}
	
	//사용자 한명의 정보를 조회한다.
	//return: 사용자 정보
	//param: 사용자 번호
	@Override
	public User getUser(int userNo) {
		return userMapper.getUser(userNo);
	}
	
	//사용자 정보를 추가한다.
	//return: 추가한 사용자 정보 수
	//param: 사용자 이름
	@Override
	public int addUser(String userName) {
		return userMapper.addUser(userName);
	}
	
	//사용자 정보를 수정한다.
	//return: 수정한 사용자 정보 수
	//param: 사용자 정보
	@Override
	public int updateUser(User user) {
		return userMapper.updateUser(user);
	}
	
	//사용자 정보를 삭제한다.
	//return: 삭제한 사용자 정보 수
	//param: 사용자 번호
	@Override
	public int delUser(int userNo) {
		return userMapper.delUser(userNo);
	}
}
