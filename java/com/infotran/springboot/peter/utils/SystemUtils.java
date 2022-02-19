package com.infotran.springboot.peter.utils;

import java.io.ByteArrayOutputStream;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.Base64;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.core.io.ClassPathResource;

public class SystemUtils {
	
	public static final String VENDOR_IMAGE_FOLDER = "C:\\images\\vendors";
	public static final String DEFAULT_IMAGE_PATH = "\\static\\images\\peter\\nigjtmarket.jpg";
	
	public static String getExFilename(String filename) {
		int n = filename.lastIndexOf(".");
		if(n>=0) {
			return filename.substring(n);			
		}else {
			return "";
		}
	}
	
	public static String blobToDataProtocol(String mimeType, Blob image) {
		if (image == null || mimeType == null) {
			image = pathToBlob(DEFAULT_IMAGE_PATH);
			mimeType = "image/jpg";
		}
		StringBuffer result = new StringBuffer("data:" + mimeType + ";base64,");
		try(ByteArrayOutputStream baos = new ByteArrayOutputStream();
			InputStream is = image.getBinaryStream();
				){
			int len = 0;
			byte[] b = new byte[81920];
			while ( (len=is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
			byte[] bytes = baos.toByteArray();
			Base64.Encoder be = Base64.getEncoder();
			result.append(new String(be.encode(bytes)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}

	public static Blob inputStreamToBlob(InputStream is) {
		Blob blob = null;
		try {
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			int len = 0;
			byte[] b = new byte[81920];
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
			byte[] data = baos.toByteArray();
			blob = new SerialBlob(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return blob;
	}

	public static Blob pathToBlob(String path) {
		Blob blob = null;

		ClassPathResource cpr = new ClassPathResource(path);
		try {
			File file = cpr.getFile();
			if (!file.exists()) {
				return null;
			}
			InputStream is = cpr.getInputStream();
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			int len = 0;
			byte[] b = new byte[81920];
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
			byte[] data = baos.toByteArray();
			blob = new SerialBlob(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return blob;
	}

	public static Clob pathToClob(String path) {
		Clob clob = null;
		ClassPathResource cpr = new ClassPathResource(path);
		try {
			File file = cpr.getFile();
			if(!file.exists()) {
				return null;}
			InputStream is = cpr.getInputStream();
			InputStreamReader isr = new InputStreamReader(is);
			CharArrayWriter caw = new CharArrayWriter();
			int len = 0;
			char[] b = new char[81920];
			while ((len = isr.read()) != -1) {
				caw.write(b, 0, len);
			}
			char[] data = caw.toCharArray();
			clob = new SerialClob(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return clob;
	}

	public static Clob StringToClob(String str) {
		Clob clob = null;
		try {
			char[] data = str.toCharArray();
			clob = new SerialClob(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return clob;
	}
}
