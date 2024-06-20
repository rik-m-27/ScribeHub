package com.mvcmajor.dao;

import java.util.List;

import com.mvcmajor.entity.Notes;
import com.mvcmajor.entity.User;

public interface UserDao{
	public int saveUser(User user);
	
	public User login(String email, String password);
	
	public int saveNotes(Notes notes);
	
	public List<Notes> getNotesByUser(User user);
	
	public Notes getNotesById(int id);
	
	public void deleteNotes(int id);
	
	public void updateNotes(Notes n);
}
