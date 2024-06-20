package com.mvcmajor.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvcmajor.dao.UserDao;
import com.mvcmajor.entity.Notes;
import com.mvcmajor.entity.User;
import com.mysql.cj.Session;

@Controller
@RequestMapping("/user/")
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/addNotes")
	public String addNotes() {
		return "add_notes";
	}
	
	@RequestMapping(path = "saveNotes", method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes note, HttpSession session) {
		User user = (User) session.getAttribute("userObj");
		note.setUser(user);
		note.setDate(LocalDateTime.now().toString());
		userDao.saveNotes(note);
		session.setAttribute("msg","Notes added successfully !!");
		return "redirect:/user/addNotes";
	}

	@RequestMapping("/viewNotes")
	public String viewNotes(HttpSession session, Model m){
		User user = (User)session.getAttribute("userObj");
		List<Notes> notes = userDao.getNotesByUser(user);
		m.addAttribute("notes", notes);
		return "view_notes";
	}

	@RequestMapping("/editNotes")
	public String editNotes(@RequestParam("id") int id, Model m) {
		Notes note = userDao.getNotesById(id);
		m.addAttribute("note", note);
		return "edit_notes";
	}
	
	@RequestMapping(path = "/updateNotes", method = RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes note, HttpSession session) {
		User user = (User)session.getAttribute("userObj");
		note.setUser(user);
		note.setDate(LocalDateTime.now().toString());
		userDao.updateNotes(note);
		session.setAttribute("msg", "Notes update successfully !! ");
		return "redirect:/user/viewNotes";
	}
	
	@RequestMapping("/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id, HttpSession session) {
		userDao.deleteNotes(id);
		session.setAttribute("msg", "Notes delete successfully");
		return "redirect:/user/viewNotes";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userObj");
		session.setAttribute("msg", "Logout Successfully !!");
		return "login";
	}

}
