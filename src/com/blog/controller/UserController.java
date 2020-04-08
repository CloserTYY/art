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
	 * 用户注册
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("/regist")
	public String addUser(User user,Model model){
		System.out.println("用户注册调用"+user.getUsername()+user.getPassword());
		userService.addUser(user);
		model.addAttribute("msg","注册成功");
		return "registSuccess";
	}
	/**
	 * 验证用户登录
	 * @param username
	 * @param password
	 * @param model
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("用户登录时调用:"+username+password);
		User user = userService.login(username, password);
		if(user!=null){
			//使用request对象的getSession()获取session，如果session不存在则创建一//将数据存储到session中个
			HttpSession session = request.getSession();
			//将数据存储到session中
			session.setAttribute("userid",username);
			//获取session的Id
			String sessionId = session.getId();
			//判断session是不是新创建的

			if (session.isNew()) {
				response.getWriter().print("session创建成功，session的id是："+sessionId);
			}else {
				response.getWriter().print("服务器已经存在该session了，session的id是："+sessionId);
			}


			model.addAttribute("msg", "登录成功");
			model.addAttribute("username",username);
			return "adminWelcome";
		}else{
			return "login";
		}
	}
	/**
	 * 获取所有用户列表
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
	 * 编辑用户
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
			model.addAttribute("msg", "修改成功");
			return "allUser";
		}else {
			model.addAttribute("msg", "修改出错");
			return "error";
		}
	}
	/**
	 * 根据id查询单个用户
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
	 * 根据id删除用户
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/deleteUser")
	public String deleteUser(int id,Model model){
		if(userService.delete(id)){
			model.addAttribute("msg", "删除成功");
			return "allUser";
		}else{
			return "error";
		}
	}
	/*
	清除session
	 */
	@RequestMapping("/intisession")
	public void intiSession(HttpServletRequest request){
		Enumeration em = request.getSession().getAttributeNames();
		while(em.hasMoreElements()){
			request.getSession().removeAttribute(em.nextElement().toString());
		}
	}

}	
