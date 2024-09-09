package vn.iotstar.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.configs.DBConnectMySQL;
import vn.iotstar.dao.IUserDao;
import vn.iotstar.models.UserModel;

public class UserDaoImpl extends DBConnectMySQL implements IUserDao{
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	@Override
	public List<UserModel> findAll() {
		
		String sql ="select * from users";
		List<UserModel> list = new ArrayList<>(); //tạo list truyền dữ liệu
		
		try {
			conn = super.getDatabaseConnection(); //kết nối database 
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next() /*Next từng Dòng tới cuối bảng*/) {
				list.add
					(new UserModel
						(rs.getInt("id"), 
						rs.getString("username"), 
						rs.getString("password"),
						rs.getString("email"), 
						rs.getString("fullname"), 
						rs.getString("images")
						)
					);//Add vào
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public UserModel findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(UserModel user) {
		// TODO Auto-generated method stub
		
	}
	public static void main(String[] args) {
			UserDaoImpl userDao = new UserDaoImpl();
		
			List<UserModel> list = userDao.findAll();
		
			for (UserModel user : list) {
				System.out.println(user);
			}
		}
}

