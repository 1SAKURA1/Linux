package com.simple.controller;
 
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.hadoop.fs.FileStatus;
 
import com.simple.model.HdfsDAO;
 
public class DownloadServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String local = "/usr/Downloadfiles";//选择一个你centos下的目录作为你的下载文件存放地址
		String filePath = new String(request.getParameter("filePath").getBytes("ISO-8859-1"),"GB2312");
		HdfsDAO hdfs = new HdfsDAO();
		hdfs.download(filePath, local);
		FileStatus[] documentList = hdfs.getDirectoryFromHdfs();
		request.setAttribute("documentList", documentList);
		System.out.println("得到list数据"+documentList);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		this.doGet(request, response);
	}
}
