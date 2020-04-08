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



//ͼƬ�ϴ�

	@RequestMapping("/upload")
	public String upload( HttpServletRequest request, Model model,Blog blog,MultipartFile pictureFile) throws Exception{

		//ʹ��uuid��ͼƬ������
		String name = UUID.randomUUID().toString().replaceAll("-","");
		//��ȡ�ļ�����չ��
//		MultipartFile pictureFile = null;
		String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
		//����ͼƬ�ϴ�·��
		String url = request.getSession().getServletContext().getRealPath("/upload");
		System.out.println(url);
		//�Ծ���·���������������ͼƬ
		pictureFile.transferTo(new File(url+"/"+name + "." + ext));
		//��ͼƬ���浽���ݿ�
		blog.setImage("upload/"+name + "." + ext);


//		//�������ݿ��·��
//		String sqlPath = null;
//		//�����ļ�����ı���·��
//		String localPath="D:\\File\\";
//		//���� �ļ���
//		String filename=null;
//		if(!blog.getFile().isEmpty()){
//			//����uuid��Ϊ�ļ�����
//			String uuid = UUID.randomUUID().toString().replaceAll("-","");
//			//����ļ����ͣ������ж��������ͼƬ����ֹ�ϴ���
//			String contentType=blog.getFile().getContentType();
////			String contentType=user.getFile().getContentType();
//			//����ļ���׺��
//			String suffixName=contentType.substring(contentType.indexOf("/")+1);
//			//�õ� �ļ���
//			filename=uuid+"."+suffixName;
//			//�ļ�����·��
//			blog.getFile().transferTo(new File(localPath+filename));
////			user.getFile().transferTo();
//		}
//		return "0";

		//��ͼƬ�����·�����������ݿ�
//		sqlPath = "/images/"+filename;
//
//		System.out.println(sqlPath);
//		blog.setImage(sqlPath);
//		user.setImage(sqlPath);
		//��ȡ��ǰ����
		Date currentTime = new Date();
		//������ת��Ϊָ����ʽ
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		blog.setTime(dateString);
		this.blogService.writeBlog(blog);
		return "success";


	}




		
		/**
		 * �洢������Ϣ
		 * @param blog
		 * @return
		 */
		@RequestMapping("/writeBlog")
		public String writeBlog(Blog blog){
					//��ȡ��ǰ����
					Date currentTime = new Date();
				 	//������ת��Ϊָ����ʽ
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
					String dateString = formatter.format(currentTime);
					blog.setTime(dateString);
					this.blogService.writeBlog(blog);
					return "success";
		}
		
		/**
		 * ����ȫ���ͣ�������ҳ��ʾ
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
		 * ͨ��id���Ҳ��ͣ�������ʾ���͵�����
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
				//��ȡid��ת������
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


				//����ѯ�������
//                request.setAttribute("pccc",blogs.getimage);

				return "page";
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}


		public String selectly(HttpServletRequest request){
//			try {
//				//��ȡid��ת������
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
//				//����ѯ�������
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
		 * ͬ���ǲ�ѯ���в�����Ϣ�����ڹ�����
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
		 * ɾ��������Ϣ
		 * @param request
		 * @return
		 */
		@RequestMapping("/deleteBlogById")
		public String deleteBlogById(HttpServletRequest request){
			try {
				String id = request.getParameter("blogid");
				int blogid = Integer.parseInt(id);
				//����ɾ��
				this.blogService.deleteBlogById(blogid);
				return "redirect:adminblog";
			} catch (Exception e) {
				return null;	
			}
		}
		/**
		 * ��������
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
				model.addAttribute("msg", "�޸ĳɹ�");
				return "adminPageList";
			}
			model.addAttribute("msg", "�޸ĳ���");
			return "error";
		}
		/**
		 * ������������Ҫ����id������
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
