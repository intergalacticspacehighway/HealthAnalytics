package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index.html" , method=RequestMethod.GET)
public String loadIndex()
{
		return("client/home");
	
}
	@RequestMapping(value="/admin.html" , method=RequestMethod.GET)
public String loadIndex2()
{
		return("admin/index");
}
	
	@RequestMapping(value="/listview.html" , method=RequestMethod.GET)
public String loadlistview()
	{
			return("client/listview");
	}
	@RequestMapping(value="/gridview.html" , method=RequestMethod.GET)
	public String loadgridview()
	{
			return("client/gridview");
	}
	@RequestMapping(value="/contactus.html" , method=RequestMethod.GET)
	public String loadcontactus()
	{
			return("client/contactus");
	}
	@RequestMapping(value="/bloglist.html" , method=RequestMethod.GET)
	public String loadbloglist()
	{
			return("client/bloglist");
	}
	@RequestMapping(value="/bloggrid.html" , method=RequestMethod.GET)
	public String loadbloggrid()
	{
			return("client/bloggrid");
	}
	@RequestMapping(value="/blogdetail.html" , method=RequestMethod.GET)
	public String loadblogdetail()
	{
			return("client/blogdetail");
	}
	@RequestMapping(value="/home.html" , method=RequestMethod.GET)
	public String loadhome()
	{
			return("client/home");
	}
}
