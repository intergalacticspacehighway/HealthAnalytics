
<jsp:include page="header.jsp"></jsp:include>
                             	<main id="main" class="tg-page-wrapper tg-haslayout">
                             	<%@taglib
	uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<c:set value="${sessionScope.doctorspecialityList}" var="i"></c:set>
 <c:set value="${sessionScope.doctorClinicList}" var="x"></c:set>
            <div id="tg-userbanner" class="tg-userbanner tg-haslayout parallax-window" data-appear-top-offset="600" data-parallax="scroll" data-image-src="resources/client/images/DOCTOR.jpg">
	<div class="container">
    	<div class="row">
        <div class="col-sm-12 col-xs-12">
        	
          </div>
        </div>
    </div>
</div>
 
<div class="container">
  <div class="row">
    <div class="tg-userdetail appointment-enabled">
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <aside id="tg-sidebar" class="tg-sidebar">
          <div class="tg-widget tg-widgetuserdetail">
            <figure class="tg-userimg">
               
            	<img src="doc/${x.get(0).doctor.registration.login.userprofileImage}" style="height: 222px;width: 178px;margin-left: 9%;">
              
            </figure>
            <div class="tg-usercontactinfo">
             
              				
				                <a class="tg-btn tg-btn-lg" href="http://maps.google.com/maps?saddr=&amp;daddr=${x.get(0).clinic.clinicAddress}${x.get(0).clinic.city.cityName},${x.get(0).clinic.state.stateName}${x.get(0).clinic.country.countryName}" target="_blank">get directions</a>
              <div class="tg-userschedule">
                <h3>Schedule</h3>
                <ul>
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Sunday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Monday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class="current"><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Tuesday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Wednesday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Thursday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Friday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                            <li class=""><a href="javascript:;" data-type="5:00 AM - 7:00 AM"><span>Saturday</span><em>5:00 AM - 7:00 AM</em></a></li>
                        
                                    </ul>
              </div>
                            <div class="tg-usercontatnow">
                <h3>contact now</h3>
                <div class="tg-widgetcontent doc-contact">
                    <form class="contact_form tg-usercontactform">
                        <fieldset>
                            <div class="row">
                                <div class="col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <input type="text" name="username" placeholder="Name" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <input type="email" name="useremail" placeholder="Email" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <input type="text" name="userphone" placeholder="Number" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <input type="text" name="usersubject" placeholder="Subject" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <textarea name="user_description" placeholder="Message" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <input type="hidden" name="email_to" value="ana@docdirect.com" class="form-control">
                                    <button class="tg-btn contact_me" type="submit">Send</button>
                                    <input type="hidden" id="user_security" name="user_security" value="c653a7a946" /><input type="hidden" name="_wp_http_referer" value="/wordpress/docdirect/doctor/anna/" />                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
              </div>
                          </div>
          </div>
          					<div class="claim-box">
						<a class="tg-btn tg-btn-lg"data-toggle="modal" data-target=".tg-user-modal" href="javascript:;">
							<i class="fa fa-exclamation-triangle"></i>
							Claim This User						</a>
					</div>
		          </aside>
      </div>
      <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
        <div class="tg-haslayout">
          <div class="tg-userbanner-content">
           
               <h1>Dr &nbsp;${i.get(0).doctor.registration.firstName}&nbsp;${i.get(0).doctor.registration.lastName} </h1>
             <span style="margin-left: 2%">${i.get(0).doctor.doctorDegree }</span>
                                <span style="margin-left: 2%">${i.get(0).doctor.doctorExperience} &nbsp;years &nbsp;experience</span>
                               
                							
				            </div>
          
                    <div class="tg-section-map">
          <div id="map_canvas" class="tg-location-map tg-haslayout"></div>
                  <div class="map-controls">
            <span id="doc-mapplus"><i class="fa fa-plus"></i></span>
            <span id="doc-mapminus"><i class="fa fa-minus"></i></span>
            <span id="doc-lock"><i class="fa fa-lock"></i></span>
        </div>
        <c:forEach items="${sessionScope.doctorClinicList}" var="x">
        <input type="hidden" id="address" value="${x.clinic.clinicAddress}"/>
        <input type="hidden" id="city" value="${x.clinic.city.cityName}"/>
         <input type="hidden" id="state" value="${x.clinic.state.stateName}"/>
          <input type="hidden" id="country" value="${x.clinic.country.countryName}"/>
                             </c:forEach>
                             <script>
                            
				jQuery(document).ready(function() {
					 var geocoder = new google.maps.Geocoder();
					 var addres = document.getElementById("address").value;
					 var city = document.getElementById("city").value;
					 var state = document.getElementById("state").value;
					 var country = document.getElementById("country").value;
                     var address = addres + " " + city + "," + state + "," + country;

                     geocoder.geocode( { 'address': address}, function(results, status) {

                       if (status == google.maps.GeocoderStatus.OK) {
                         var latitude = results[0].geometry.location.lat();
                         var longitude = results[0].geometry.location.lng();
                         alert(address);
                         alert(latitude);
                         alert(longitude);
                         
                       } 
                       docdirect_init_detail_map_script({"status":"found","users_list":[{"latitude":latitude,"longitude":longitude,"title":"Dr.Anna","name":"Dr Anna","email":"ana@docdirect.com","phone_number":"61 235 856843","address":"91 Warrington Cres, London W9 1EH, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-mapmarker\"><figure><img width=\"60\" heigt=\"60\" src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-09-1-150x150.jpg\" alt=\"User\"><\/figure><div class=\"tg-mapmarkercontent\"><h3><a href=\"https:\/\/themographics.com\/wordpress\/docdirect\/doctor\/anna\/\">Dr Anna<\/a><\/h3><span>Doctor<\/span><ul class=\"tg-likestars\"><li>        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:100%\"><\/span>\r\n            <\/span>\r\n            \r\n                    <\/div>\r\n        <\/li><li><a data-view_type=\"v1\" class=\"tg-like add-to-fav\" data-wl_id=\"337\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a><\/li><li>864&nbsp;view(s)<\/li><\/ul><\/div>"}}]});
           			
                     }); 
						});	
		  </script>
          </div> 
                    <div class="tg-aboutuser">
            <div class="tg-userheading">
              <h2>About&nbsp;Dr &nbsp;${i.get(0).doctor.registration.firstName}&nbsp;${i.get(0).doctor.registration.lastName}</h2>
              
            </div>
			              <div class="tg-description">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
              </div>
                                  </div>
         
          <!--Languages-->
		                <div class="tg-honourawards tg-listview-v3 user-section-style">
                <div class="tg-userheading">
                  <h2>Languages</h2>
                </div>
                <div class="tg-doctor-profile">
                      <ul class="tg-tags">
                                                <li><a href="javascript:;" class="tg-btn">Arabic</a></li>
                                                <li><a href="javascript:;" class="tg-btn">Danish</a></li>
                                                <li><a href="javascript:;" class="tg-btn">English</a></li>
                                              </ul>
                  </div>
              </div>
                    
          <!--Specialities-->
                        <div class="tg-honourawards tg-listview-v3 user-section-style">
                <div class="tg-userheading">
                  <h2>Specialties</h2>
                </div>
                <div class="tg-doctor-profile">
                      <ul class="tg-tags">
                      <c:forEach items="${sessionScope.doctorspecialityList}" var="i">
                                                      <li><a href="javascript:;" class="tg-btn">${i.speciality.specialityName}</a></li>
                                                     </c:forEach>
                                                </ul>
                  </div>
              </div>
                    
           <!--Experience-->
		            <div class="tg-userexperience">
            <div class="tg-userheading">
              <h2><i class="fa fa-briefcase"></i>Experience</h2>
            </div>
            <ul>
                            <li>
                    <div class="tg-dotstyletitle">
                      <h3>Lecturer, Department of gastroenterology&nbsp;&nbsp;(May, 2010&nbsp;-&nbsp;Jul, 2012)</h3>
                      <span>Co-ed/Women/Boys</span>
                    </div>
                    
               </li>
			                 <li>
                    <div class="tg-dotstyletitle">
                      <h3>Sr Consultant at Gastroentology Hospital&nbsp;&nbsp;(Sep, 2012&nbsp;-&nbsp;Aug, 2014)</h3>
                      <span>Adams State College</span>
                    </div>
                   
               </li>
			                 <li>
                    <div class="tg-dotstyletitle">
                      <h3>Present Consultant, Department of Gastroenterology at Apollo Hospital&nbsp;&nbsp;(Mar, 2014&nbsp;-&nbsp;Aug, 2016)</h3>
                      <span>Florida Hospital College of Health Sciences</span>
                    </div>
                    
               </li>
			             </ul>
          </div>
                    
          <!--Education-->
		            <div class="tg-userexperience tg-userqualification">
            <div class="tg-userheading">
              <h2><i class="fa fa-graduation-cap"></i>Education</h2>
            </div>
            <ul>
			                <li>
                    <div class="tg-dotstyletitle">
                      <h3>Bachelor of Medicine, Bachelor of Surgery<strong>&nbsp;&nbsp;</strong>(Jan, 2011&nbsp;-&nbsp;Jan, 2013)</h3>
                      <span>Medical School - New York University</span> 
                    </div>
                   
               </li>
                              <li>
                    <div class="tg-dotstyletitle">
                      <h3>Bachelor of Medical Sciences<strong>&nbsp;&nbsp;</strong>(Jan, 2013&nbsp;-&nbsp;Jan, 2014)</h3>
                      <span>Medical School - New York University</span> 
                    </div>
                    
               </li>
                              
                      	</ul>
          </div>
                    
          <!--Awards-->
		            <div class="tg-userexperience tg-honourawards">
            <div class="tg-userheading">
              <h2><i class="fa fa-trophy"></i>Honours &amp; Awards</h2>
            </div>
            <ul>
				                    <li>
                        <div class="tg-dotstyletitle">
                          <h3>Summa Cum Laude, Yale University&nbsp;&nbsp;(April 04, 2015)</h3>
                        </div> 
                        <div class="tg-description">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
</p>
                        </div>
                    </li>
                                       <li>
                        <div class="tg-dotstyletitle">
                          <h3>Summa Cum Laude, Yale University &nbsp;&nbsp;(September 09, 2012)</h3>
                        </div> 
                        <div class="tg-description">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
</p>
                        </div>
                    </li>
                                       <li>
                        <div class="tg-dotstyletitle">
                          <h3>Summa Cum Laude, Yale University &nbsp;&nbsp;(August 08, 2013)</h3>
                        </div> 
                        <div class="tg-description">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                        </div>
                    </li>
                               </ul>
          </div>
                    
                       
\                   </div>
      </div>
    </div>
  </div>
</div>
			</main>
                           <jsp:include page="footer.jsp"></jsp:include>