package com.bjs.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bjs.movie.domain.MovieVO;
import com.bjs.movie.service.MovieService;
import com.bjs.util.MediaUtils;
import com.bjs.util.UploadFileUtils;



@Controller
@RequestMapping("/movie/*")
public class MovieController {

	private static final Logger logger =
			LoggerFactory.getLogger(MovieController.class);
	
	@Inject
	private MovieService movieservice;
	
	
	@Resource(name = "uploadPath")
	private String uploadPath;


	//영화등록
	@RequestMapping(value="/movieRegist", method=RequestMethod.GET)
	public void movieInsertGET(MovieVO vo, Model model)throws Exception{
	}
	
	@RequestMapping(value="/movieRegist", method=RequestMethod.POST)
	public String moveiInsertPOST(MovieVO vo, RedirectAttributes rttr, @RequestParam("file") MultipartFile file )throws Exception {
		
		String movie_img = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		String[] movie_img1 = movie_img.split("_");

		if (movie_img1.length > 2) {
			String photo_img = movie_img.substring(0, 12);
			String photo_img2 = movie_img.substring(14);
			vo.setMovie_img((photo_img + photo_img2));
		}
		
		movieservice.movieInsert(vo);
		rttr.addFlashAttribute("result", "SUCCESS");
		return "redirect:/movie/movieList";
	}
	
	// 파일 업로드
		@ResponseBody
		@RequestMapping(value = "/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
		public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {

			return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()),
					HttpStatus.CREATED);
		}

		// 파일(이미지) 출력
		@ResponseBody
		@RequestMapping("/displayFile")
	    public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
	        InputStream in = null;
	        ResponseEntity<byte[]> entity = null;
	        try {

	           String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

	           MediaType mType = MediaUtils.getMediaType(formatName);

	           HttpHeaders headers = new HttpHeaders();

	           in = new FileInputStream(uploadPath + fileName);

	           if (mType != null) {
	              headers.setContentType(mType);
	           } else {
	         	  
	              fileName = fileName.substring(fileName.indexOf("_") + 1);
	              headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	              headers.add("Content-Disposition",
	                    "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
	           }

	           entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
	        } catch (Exception e) {
	           e.printStackTrace();
	           entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	        } finally {
	           in.close();
	        }
	        return entity;
	     }

		// attach 테이블에서 업로드된 파일 삭제
		@ResponseBody
		@RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
		public ResponseEntity<String> deleteFile(String fileName) {

			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			if (mType != null) {

				String front = fileName.substring(0, 12);
				String end = fileName.substring(14);
				new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
			}

			new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}

		@ResponseBody
		@RequestMapping(value = "/deleteAllFiles", method = RequestMethod.POST)
		public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files) {

			if (files == null || files.length == 0) {
				return new ResponseEntity<String>("deleted", HttpStatus.OK);
			}

			for (String fileName : files) {
				String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

				MediaType mType = MediaUtils.getMediaType(formatName);

				if (mType != null) {

					String front = fileName.substring(0, 12);
					String end = fileName.substring(14);
					new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
				}

				new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

			}
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}
	
		//영화 List 출력
		@RequestMapping("/movieList")
		public void movieList(Model model) throws Exception {
			List<MovieVO> list = movieservice.movieList();
			HashMap<Integer, String> userMap = new HashMap<Integer, String>();

			model.addAttribute("list", list);
			model.addAttribute("userMap", userMap);
		}
		
		//영화 상세보기
		@RequestMapping("movieRead")
		public void movieRead(@RequestParam("movie_id") int movie_id, Model model) throws Exception {
			model.addAttribute(movieservice.movieRead(movie_id));
		}		
		
		
		//예매 LIST 출력
		@RequestMapping("/rsvList")
		public void rsvList(Model model) throws Exception {
			
		}
}

