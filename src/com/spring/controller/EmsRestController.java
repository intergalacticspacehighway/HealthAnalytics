package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/emsServiceController", method = { RequestMethod.GET,
		RequestMethod.POST })
public class EmsRestController {

	@RequestMapping(value = "/setCoordinates.html", method = RequestMethod.POST)
	public String setCoordinates(@RequestBody String apirequest, ModelMap model, PrintWriter out, HttpServletResponse response)
			throws JSONException, IOException {
		System.out.println(apirequest + "hii");

		JSONObject jsonobj = new JSONObject(apirequest);
		System.out.println(jsonobj);
		System.out.println("hiii + " + jsonobj.get("latitude"));
		double latitude = (double) jsonobj.get("latitude");
		double longitude = (double) jsonobj.get("longitude");
		model.addAttribute("latitude", latitude);
		model.addAttribute("longitude", longitude);
		out = response.getWriter();
		out.print("success");
		
		return null;
		

	}

	@RequestMapping(value = "/emsMap.html", method = RequestMethod.GET)
	public String displayMap() throws JSONException {
		return ("client/emsMap");
	}
}
