package com.yc.util;

import java.io.File;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.yc.bean.User;

/**
 * 单文件上传的封装，将内容设置到javaBean对象中
 * @author 00
 *
 */ 
public class UploadFileUtil {

	private static final String BASEPATH="upload";
	//private static final long MAXFILESIZE=1024*10;//单个文件的大小
	private static final String CHARSET="UTF-8";
	
	public static <T> T upload(HttpServletRequest request,Class c){
		System.out.println("upload....");
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		upload.setHeaderEncoding(CHARSET);
		//upload.setFileSizeMax(MAXFILESIZE);
		Method [] methods=c.getMethods();
		
		//解析请求对象，获取表单上所有元素的集合
		try{
			T t=(T)c.newInstance();//创建对象
			List<FileItem>items=upload.parseRequest(request);
			FileItem item=null;
			for(int i=0;i<items.size();i++){
				item=items.get(i);
				if(item.isFormField()){//普通表单元素
					for(Method m:methods){
						if(("set"+item.getFieldName()).equalsIgnoreCase(m.getName())){
							m.invoke(t, item.getString(CHARSET));
						}
						System.out.println(m.getName());
					}
				}else{//文件
					System.out.println("444....");
					if(null!=item.getName()&&!"".equals(item.getName())){
						System.out.println("文件的大小"+item.getSize());
						System.out.println("文件的名称"+item.getName());
						System.out.println("文件的类型"+item.getContentType());
						//确保上传过去的图片名不重复 随机产生
						String filename=System.currentTimeMillis()+new Random().nextInt(1000)+item.getName();
						File file=new File(request.getServletContext().getRealPath("/")+BASEPATH,filename);
						//将文件写入服务器中
						item.write(file);
						for(Method m:methods){
							if(("set"+item.getFieldName()).equalsIgnoreCase(m.getName())){
								m.invoke(t, BASEPATH+"/"+file.getName());
							}
						}
					}
				}
			}
			return t;
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
