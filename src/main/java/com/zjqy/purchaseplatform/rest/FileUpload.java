package com.zjqy.purchaseplatform.rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.luis.basic.rest.model.SimpleMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.util.BaseUtil;

@Controller
public class FileUpload {
	private static final Logger logger = Logger.getLogger(FileUpload.class);
	@ResponseBody
	@RequestMapping(value = "auth/upload", method = RequestMethod.POST)
	public SimpleMessage<Object> upload(String fileName, MultipartHttpServletRequest request) {
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		try {
			String type = (String) request.getParameter("type");
			String filepath = BaseUtil.getAuthPath();
			List<MultipartFile> files = request.getFiles("file");
			Account account = (Account) request.getSession().getAttribute("account");
			if (!files.isEmpty()) {
				// 文件上传路径
				File file = new File(filepath);
				if(!file.exists()){
					file.mkdirs();
				}
				for (int i = 0; i < files.size(); i++) {
					if (!files.get(i).isEmpty()) {
//						String path = filepath + files.get(i).getOriginalFilename();
						String name = files.get(i).getOriginalFilename();
						int index = name.lastIndexOf(".");
						String prefix = name.substring(index);
						String newName = UUID.randomUUID().toString().replace("-", "") + prefix;
						if("bl".equals(type)){// 营业执照文件
							account.getCompany().setBlFile(BaseUtil.AUTH_PATH+newName);
						} else if("trc".equals(type)){// 税务登记证文件
							account.getCompany().setTrcFile(BaseUtil.AUTH_PATH+newName);
						} else if("oc".equals(type)){// 组织结构代码证文件
							account.getCompany().setOcFile(BaseUtil.AUTH_PATH+newName);
						}
						String path = filepath + newName;
						logger.info("上传文件：" + path);
						byte[] bytes = files.get(i).getBytes();
						FileOutputStream fos = new FileOutputStream(path); // 写入文件
						fos.write(bytes);
						fos.close();
					}
				}
				logger.info("上传文件成功！");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sm;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "auth/upload2", method = RequestMethod.POST)
	public SimpleMessage<Object> upload2(String fileName, MultipartHttpServletRequest request) {
		SimpleMessage<Object> sm = new SimpleMessage<Object>();
		try {
//			String type = (String) request.getParameter("type");
			String filepath = null;
			List<MultipartFile> files = request.getFiles("files");
			if (!files.isEmpty()) {
				// 文件上传路径
				File file = new File(filepath);
				if(!file.exists()){
					file.mkdirs();
				}
				for (int i = 0; i < files.size(); i++) {
					if (!files.get(i).isEmpty()) {
						String path = filepath + files.get(i).getOriginalFilename();
						logger.info("上传文件：" + path);
						byte[] bytes = files.get(i).getBytes();
						FileOutputStream fos = new FileOutputStream(path); // 写入文件
						fos.write(bytes);
						fos.close();
					}
				}
				logger.info("上传文件成功！");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sm;
	}
	
}
