package com.kh.common;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File originFile) {
		
		long currentTime = System.currentTimeMillis();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		
		String name= originFile.getName();
		
		String ext = "";
		
		int dot = name.lastIndexOf(".");
		
		if(dot != -1) {
			ext = name.substring(dot);
		}
		
		String fileName = name+sdf.format(new Date(currentTime)) + ext;
		
		File newFile = new File(originFile.getParent(), fileName);
		
		return newFile;
		
	}
}


