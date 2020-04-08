package com.blog.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.model.User;
import com.blog.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	/**
	 * �û�ע��
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("/regist")
	public String addUser(User user,Model model){
		System.out.println("�û�ע�����"+user.getUsername()+user.getPassword());
		userService.addUser(user);
		model.addAttribute("msg","ע��ɹ�");
		return "registSuccess";
	}
	/**
	 * ��֤�û���¼
	 * @param username
	 * @param password
	 * @param model
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("�û���¼ʱ����:"+username+password);
		User user = userService.login(username, password);
		if(user!=null){
			//ʹ��request�����getSession()��ȡsession�����session�������򴴽�һ//�����ݴ洢��session�и�
			HttpSession session = request.getSession();
			//�����ݴ洢��session��
			session.setAttribute("userid",username);
			//��ȡsession��Id
			String sessionId = session.getId();
			//�ж�session�ǲ����´�����

			if (session.isNew()) {
				response.getWriter().print("session�����ɹ���session��id�ǣ�"+sessionId);
			}else {
				response.getWriter().print("�������Ѿ����ڸ�session�ˣ�session��id�ǣ�"+sessionId);
			}


			model.addAttribute("msg", "��¼�ɹ�");
			model.addAttribute("username",username);
			return "adminWelcome";
		}else{
			return "login";
		}
	}
	/**
	 * ��ȡ�����û��б�
	 * @paramrequest
	 * @param model
	 * @return
	 */
	@RequestMapping("/getAllUser")
	public String getAllUser(
			@RequestParam(value="pn",defaultValue="1")Integer pn,
			Model model){
		PageHelper.startPage(pn, 5);
		List<User> user = userService.findAll();
		PageInfo pageUser = new PageInfo(user);
		model.addAttribute("userList", pageUser);  
		return "allUser";
	}
	/**
	 * �༭�û�
	 * @param user
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(User user,HttpServletRequest request,Model model){
		if(userService.update(user)){
			user = userService.findById(user.getId());
			request.setAttribute("user", user);
			model.addAttribute("user", user);
			model.addAttribute("msg", "�޸ĳɹ�");
			return "allUser";
		}else {
			model.addAttribute("msg", "�޸ĳ���");
			return "error";
		}
	}
	/**
	 * ����id��ѯ�����û�
	 * @param id
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/getUser")
	public String getUser(int id,HttpServletRequest request,Model model){
		User user = userService.findById((id));
		request.setAttribute("user", user);
		model.addAttribute("user", user);
		return "editUser";
	}
	/**
	 * ����idɾ���û�
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/deleteUser")
	public String deleteUser(int id,Model model){
		if(userService.delete(id)){
			model.addAttribute("msg", "ɾ���ɹ�");
			return "allUser";
		}else{
			return "error";
		}
	}
	/*
	���session
	 */
	@RequestMapping("/intisession")
	public void intiSession(HttpServletRequest request){
		Enumeration em = request.getSession().getAttributeNames();
		while(em.hasMoreElements()){
			request.getSession().removeAttribute(em.nextElement().toString());
		}
	}

}	
