package com.akyuz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.akyuz.entity.Student;

public class RegisterDAO {
	private Connection conn;

	public RegisterDAO(Connection conn) {
		this.conn = conn;

	}

	public boolean studentRegister(Student st) {

		boolean f = false;
		try {
			String sql = "insert into Student (name,email,dob,adress,phno,gender,password) values (?,?,?,?,?,?,?) ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, st.getName());
			ps.setString(2, st.getEmail());
			ps.setString(3, st.getDob());
			ps.setString(4, st.getAdress());
			ps.setString(5, st.getPhno());
			ps.setString(6, st.getGender());
			ps.setString(7, st.getPassword());

			int result = ps.executeUpdate();
			if (result == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

}
