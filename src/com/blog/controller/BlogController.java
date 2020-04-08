package com.blog.controller;

import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.blog.model.Ly;
import com.blog.model.User;
import com.blog.service.lyService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import
import com.blog.model.Blog;
import com.blog.model.Diary;
import com.blog.service.BlogService;
import com.blog.service.DiaryService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BlogController {
//	private static final java.util.UUID UUID = ;
//   @Autowired(required = true)
//   lyService lyService;
	@Autowired
	BlogService blogService;
	@Autowired
	lyService lyService;
	@Autowired
	DiaryService diaryService;



//图片上次

	@RequestMapping("/upload")
	public String upload( HttpServletRequest request, Model model,Blog blog,MultipartFile pictureFile) throws Exception{

		//使用uuid给图片重命名
		String name = UUID.randomUUID().toString().replaceAll("-","");
		//获取文件的扩展名
//		MultipartFile pictureFile = null;
		String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
		//设置图片上传路径
		String url = request.getSession().getServletContext().getRealPath("/upload");
		System.out.println(url);
		//以绝对路径保存重命名后的图片
		pictureFile.transferTo(new File(url+"/"+name + "." + ext));
		//把图片保存到数据库
		blog.setImage("upload/"+name + "." + ext);


//		//保存数据库的路径
//		String sqlPath = null;
//		//定义文件保存的本地路径
//		String localPath="D:\\File\\";
//		//定义 文件名
//		String filename=null;
//		if(!blog.getFile().isEmpty()){
//			//生成uuid作为文件名称
//			String uuid = UUID.randomUUID().toString().replaceAll("-","");
//			//获得文件类型（可以判断如果不是图片，禁止上传）
//			String contentType=blog.getFile().getContentType();
////			String contentType=user.getFile().getContentType();
//			//获得文件后缀名
//			String suffixName=contentType.substring(contentType.indexOf("/")+1);
//			//得到 文件名
//			filename=uuid+"."+suffixName;
//			//文件保存路径
//			blog.getFile().transferTo(new File(localPath+filename));
////			user.getFile().transferTo();
//		}
//		return "0";

		//把图片的相对路径保存至数据库
//		sqlPath = "/images/"+filename;
//
//		System.out.println(sqlPath);
//		blog.setImage(sqlPath);
//		user.setImage(sqlPath);
		//获取当前日期
		Date currentTime = new Date();
		//将日期转化为指定格式
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		blog.setTime(dateString);
		this.blogService.writeBlog(blog);
		return "success";


	}




		
		/**
		 * 存储博客信息
		 * @param blog
		 * @return
		 */
		@RequestMapping("/writeBlog")
		public String writeBlog(Blog blog){
					//获取当前日期
					Date currentTime = new Date();
				 	//将日期转化为指定格式
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
					String dateString = formatter.format(currentTime);
					blog.setTime(dateString);
					this.blogService.writeBlog(blog);
					return "success";
		}
		
		/**
		 * 查找全博客，用于主页显示
		 * @param pn
		 * @param model
		 * @return
		 */
		@RequestMapping("/selectAllBlog")
		public String selectAllBlog2(
				@RequestParam(value="pn",defaultValue="1")Integer pn,
				Model model
				){
			try {
				PageHelper.startPage(pn, 8);
				List<Blog> blogs =blogService.selectAllBlog();
				PageInfo page = new PageInfo(blogs);
				model.addAttribute("pageInfo", page);
				return "blogindex";
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}
		
		
		/**
		 * 通过id查找博客，用于显示博客的正文
		 * @param request
		 * @return
		 */
		@RequestMapping("/selectBlogById")
		public String selectBlogById(HttpServletRequest request,@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
			String id1 = request.getParameter("blogid");
			int id = Integer.parseInt(id1);
			PageHelper.startPage(pn,8);
			List<Ly> ly = this.lyService.selectly(id);
			PageInfo page =new PageInfo(ly);
			model.addAttribute("pageInfo",page);
//			try{
//				String id = request.getParameter("blogid");
//				int blogid = Integer.parseInt(id);
////				int pn;
//
//				return "page";
//
//
//			}catch (Exception e){
//				return null;
//			}



			try {
				//获取id并转化类型
				String id2 = request.getParameter("blogid");
				int id11 = Integer.parseInt(id2);
				List<Blog> blogs = new ArrayList<Blog>();
				blogs =  this.blogService.selectBlogById(id11);
				request.setAttribute("blog", blogs.get(0));






//				 String image = this.blogService.findimage(blogid);
//				 request.setAttribute("pccc",image);
//				List<Ly> ly = new ArrayList<Ly>();
//				ly= this.diaryService.selectly(blogid);
//				request.setAttribute("ly",ly.get(0));


				//将查询结果返回
//                request.setAttribute("pccc",blogs.getimage);

				return "page";
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}


		public String selectly(HttpServletRequest request){
//			try {
//				//获取id并转化类型
//				String id = request.getParameter("blogid");
//				int blogid = Integer.parseInt(id);
//				List<Ly> ly = new ArrayList<Ly>();
//				ly = this.diaryService.selectly(blogid);
//
////				ly =  this.blogService.selectBlogById(blogid);
////				 String image = this.blogService.findimage(blogid);
////				 request.setAttribute("pccc",image);
//
//
//				//将查询结果返回
////                request.setAttribute("pccc",blogs.getimage);
////				request.setAttribute("blog", blogs.get(0));
//				return "page";
//			} catch (Exception e) {
//				System.out.println(e);
//				return null;
//			}



        return "";
		}






		/**
		 * 同样是查询所有博客信息，用于管理博客
		 * @param pn
		 * @param model
		 * @return
		 */
		@RequestMapping("/adminblog")
		public String adminblog(
				@RequestParam(value="pn",defaultValue="1")Integer pn,
				Model model){
			try {
				PageHelper.startPage(pn, 8);
				List<Blog> blogs = blogService.selectAllBlog();
				PageInfo page1 = new PageInfo(blogs);
				model.addAttribute("blogs", page1);
				return "adminPageList";
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}
		/**
		 * 删除博客信息
		 * @param request
		 * @return
		 */
		@RequestMapping("/deleteBlogById")
		public String deleteBlogById(HttpServletRequest request){
			try {
				String id = request.getParameter("blogid");
				int blogid = Integer.parseInt(id);
				//调用删除
				this.blogService.deleteBlogById(blogid);
				return "redirect:adminblog";
			} catch (Exception e) {
				return null;	
			}
		}
		/**
		 * 更新文章
		 * @param blog
		 * @param model
		 * @param request
		 * @return
		 */
		@RequestMapping("/updateBlog")
		public String updateBlog(Blog blog,Model model,HttpServletRequest request){
			if(blogService.updateBlog(blog)){
				blog = blogService.findById(blog.getBlogid());
				request.setAttribute("blog", blog);
				model.addAttribute("blog", blog);
				model.addAttribute("msg", "修改成功");
				return "adminPageList";
			}
			model.addAttribute("msg", "修改出错");
			return "error";
		}
		/**
		 * 更新文章所需要查找id的文章
		 * @param id
		 * @param request
		 * @param model
		 * @return
		 */
		@RequestMapping("/getBlog")
		public String getBlog(int id,HttpServletRequest request,Model model){
			Blog blog = blogService.findById(id);
			request.setAttribute("blog", blog);
			model.addAttribute("blog", blog);
			return "editBlog";
		}
}
