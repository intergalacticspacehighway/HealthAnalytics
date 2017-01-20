<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="header.jsp"></jsp:include>
	 <main id="main" class="tg-page-wrapper tg-haslayout"> 
<div class="container">
  <div class="row">
      <form class="form-refinesearch tg-haslayout">
      <div class="col-md-4 col-sm-12 col-xs-12 pull-left">
          <div class="tg-doctors-list tg-haslayout">
            <div class="tg-refinesearcharea">
              <div class="tg-heading-border tg-small">
                <h2>refine search</h2>
              </div>
              <fieldset>
                  <div class="row">
                                        <div class="col-md-12 col-sm-6 col-xs-6">
                      <div class="form-group">
                        <input type="text" class="form-control" value="" name="by_name" placeholder="Type Keyword...">
                      </div>
                    </div>
                                                            <div class="col-md-12 col-sm-6 col-xs-6">
                      <div class="form-group">
                            	<div class="locate-me-wrap">
            <div id="location-pickr-map" class="elm-display-none"></div>
            <input type="text"  autocomplete="on" id="location-address" value="" name="geo_location" placeholder="Geo location" class="form-control">
                        <a href="javascript:;" class="geolocate"><img src="https://themographics.com/wordpress/docdirect/wp-content/themes/docdirect/images/geoicon.svg" width="16" height="16" class="geo-locate-me" alt="Locate me!"></a>
                                    <a href="javascript:;" class="geodistance"><i class="fa fa-angle-down" aria-hidden="true"></i></a>
            <div class="geodistance_range elm-display-none">
                <div class="distance-ml">Distance in (Miles): <span>50</span></div>
                <input type="hidden" name="geo_distance" value="50" class="geo_distance" />
                <div class="geo_distance" id="geo_distance"></div>
            </div>
                    </div>
        		<script>
			jQuery(document).ready(function(e) {
				jQuery( "#geo_distance" ).slider({
				   range: "min",
				   min:1,
				   max:300,
				   value:50,
				   animate:"slow",
				   orientation: "horizontal",
				   slide: function( event, ui ) {
					  jQuery( ".distance-ml span" ).html( ui.value );
					  jQuery( ".geo_distance" ).val( ui.value );
				   }	
				});
			});
		</script>
                                    <script>
                            jQuery(document).ready(function(e) {
                                //init
                                jQuery.docdirect_init_map(51.5001524,-0.1262362);
                            });
                        </script> 
                      </div>
                    </div>
                                                            <div class="col-md-12 col-sm-6 col-xs-6">
                      <div class="form-group">
                        <input type="text" class="form-control" value="" name="zip" placeholder="Search users by zip code">
                      </div>
                    </div>
                                                            <div class="col-md-12 col-sm-6 col-xs-6">
                        <div class="form-group"> 
                            <span class="select">
                                <select class="group language-selelct" name="language">
                                  <option value="">Select language</option>
                                                                      <option  value="ab">Abkhazian</option>
                                                                    <option  value="aa">Afar</option>
                                                                    <option  value="af">Afrikaans</option>
                                                                    <option  value="ak">Akan</option>
                                                                    <option  value="sq">Albanian</option>
                                                                    <option  value="am">Amharic</option>
                                                                    <option  value="ar">Arabic</option>
                                                                    <option  value="an">Aragonese</option>
                                                                    <option  value="hy">Armenian</option>
                                                                    <option  value="as">Assamese</option>
                                                                    <option  value="av">Avaric</option>
                                                                    <option  value="ae">Avestan</option>
                                                                    <option  value="ay">Aymara</option>
                                                                    <option  value="az">Azerbaijani</option>
                                                                    <option  value="bm">Bambara</option>
                                                                    <option  value="ba">Bashkir</option>
                                                                    <option  value="eu">Basque</option>
                                                                    <option  value="be">Belarusian</option>
                                                                    <option  value="bn">Bengali</option>
                                                                    <option  value="bh">Bihari languages</option>
                                                                    <option  value="bi">Bislama</option>
                                                                    <option  value="bs">Bosnian</option>
                                                                    <option  value="br">Breton</option>
                                                                    <option  value="bg">Bulgarian</option>
                                                                    <option  value="my">Burmese</option>
                                                                    <option  value="ca">Catalan, Valencian</option>
                                                                    <option  value="km">Central Khmer</option>
                                                                    <option  value="ch">Chamorro</option>
                                                                    <option  value="ce">Chechen</option>
                                                                    <option  value="ny">Chichewa, Chewa, Nyanja</option>
                                                                    <option  value="zh">Chinese</option>
                                                                    <option  value="cu">Church Slavonic, Old Bulgarian, Old Church Slavonic</option>
                                                                    <option  value="cv">Chuvash</option>
                                                                    <option  value="kw">Cornish</option>
                                                                    <option  value="co">Corsican</option>
                                                                    <option  value="cr">Cree</option>
                                                                    <option  value="hr">Croatian</option>
                                                                    <option  value="cs">Czech</option>
                                                                    <option  value="da">Danish</option>
                                                                    <option  value="dv">Divehi, Dhivehi, Maldivian</option>
                                                                    <option  value="nl">Dutch, Flemish</option>
                                                                    <option  value="dz">Dzongkha</option>
                                                                    <option  value="en">English</option>
                                                                    <option  value="eo">Esperanto</option>
                                                                    <option  value="et">Estonian</option>
                                                                    <option  value="ee">Ewe</option>
                                                                    <option  value="fo">Faroese</option>
                                                                    <option  value="fj">Fijian</option>
                                                                    <option  value="fi">Finnish</option>
                                                                    <option  value="fr">French</option>
                                                                    <option  value="ff">Fulah</option>
                                                                    <option  value="gd">Gaelic, Scottish Gaelic</option>
                                                                    <option  value="gl">Galician</option>
                                                                    <option  value="lg">Ganda</option>
                                                                    <option  value="ka">Georgian</option>
                                                                    <option  value="de">German</option>
                                                                    <option  value="ki">Gikuyu, Kikuyu</option>
                                                                    <option  value="el">Greek (Modern)</option>
                                                                    <option  value="kl">Greenlandic, Kalaallisut</option>
                                                                    <option  value="gn">Guarani</option>
                                                                    <option  value="gu">Gujarati</option>
                                                                    <option  value="ht">Haitian, Haitian Creole</option>
                                                                    <option  value="ha">Hausa</option>
                                                                    <option  value="he">Hebrew</option>
                                                                    <option  value="hz">Herero</option>
                                                                    <option  value="hi">Hindi</option>
                                                                    <option  value="ho">Hiri Motu</option>
                                                                    <option  value="hu">Hungarian</option>
                                                                    <option  value="is">Icelandic</option>
                                                                    <option  value="io">Ido</option>
                                                                    <option  value="ig">Igbo</option>
                                                                    <option  value="id">Indonesian</option>
                                                                    <option  value="ia">Interlingua (International Auxiliary Language Association)</option>
                                                                    <option  value="ie">Interlingue</option>
                                                                    <option  value="iu">Inuktitut</option>
                                                                    <option  value="ik">Inupiaq</option>
                                                                    <option  value="ga">Irish</option>
                                                                    <option  value="it">Italian</option>
                                                                    <option  value="ja">Japanese</option>
                                                                    <option  value="jv">Javanese</option>
                                                                    <option  value="kn">Kannada</option>
                                                                    <option  value="kr">Kanuri</option>
                                                                    <option  value="ks">Kashmiri</option>
                                                                    <option  value="kk">Kazakh</option>
                                                                    <option  value="rw">Kinyarwanda</option>
                                                                    <option  value="kv">Komi</option>
                                                                    <option  value="kg">Kongo</option>
                                                                    <option  value="ko">Korean</option>
                                                                    <option  value="kj">Kwanyama, Kuanyama</option>
                                                                    <option  value="ku">Kurdish</option>
                                                                    <option  value="ky">Kyrgyz</option>
                                                                    <option  value="lo">Lao</option>
                                                                    <option  value="la">Latin</option>
                                                                    <option  value="lv">Latvian</option>
                                                                    <option  value="lb">Letzeburgesch, Luxembourgish</option>
                                                                    <option  value="li">Limburgish, Limburgan, Limburger</option>
                                                                    <option  value="ln">Lingala</option>
                                                                    <option  value="lt">Lithuanian</option>
                                                                    <option  value="lu">Luba-Katanga</option>
                                                                    <option  value="mk">Macedonian</option>
                                                                    <option  value="mg">Malagasy</option>
                                                                    <option  value="ms">Malay</option>
                                                                    <option  value="ml">Malayalam</option>
                                                                    <option  value="mt">Maltese</option>
                                                                    <option  value="gv">Manx</option>
                                                                    <option  value="mi">Maori</option>
                                                                    <option  value="mr">Marathi</option>
                                                                    <option  value="mh">Marshallese</option>
                                                                    <option  value="ro">Moldovan, Moldavian, Romanian</option>
                                                                    <option  value="mn">Mongolian</option>
                                                                    <option  value="na">Nauru</option>
                                                                    <option  value="nv">Navajo, Navaho</option>
                                                                    <option  value="nd">Northern Ndebele</option>
                                                                    <option  value="ng">Ndonga</option>
                                                                    <option  value="ne">Nepali</option>
                                                                    <option  value="se">Northern Sami</option>
                                                                    <option  value="no">Norwegian</option>
                                                                    <option  value="nb">Norwegian Bokmål</option>
                                                                    <option  value="nn">Norwegian Nynorsk</option>
                                                                    <option  value="ii">Nuosu, Sichuan Yi</option>
                                                                    <option  value="oc">Occitan (post 1500)</option>
                                                                    <option  value="oj">Ojibwa</option>
                                                                    <option  value="or">Oriya</option>
                                                                    <option  value="om">Oromo</option>
                                                                    <option  value="os">Ossetian, Ossetic</option>
                                                                    <option  value="pi">Pali</option>
                                                                    <option  value="pa">Panjabi, Punjabi</option>
                                                                    <option  value="ps">Pashto, Pushto</option>
                                                                    <option  value="fa">Persian</option>
                                                                    <option  value="pl">Polish</option>
                                                                    <option  value="pt">Portuguese</option>
                                                                    <option  value="qu">Quechua</option>
                                                                    <option  value="rm">Romansh</option>
                                                                    <option  value="rn">Rundi</option>
                                                                    <option  value="ru">Russian</option>
                                                                    <option  value="sm">Samoan</option>
                                                                    <option  value="sg">Sango</option>
                                                                    <option  value="sa">Sanskrit</option>
                                                                    <option  value="sc">Sardinian</option>
                                                                    <option  value="sr">Serbian</option>
                                                                    <option  value="sn">Shona</option>
                                                                    <option  value="sd">Sindhi</option>
                                                                    <option  value="si">Sinhala, Sinhalese</option>
                                                                    <option  value="sk">Slovak</option>
                                                                    <option  value="sl">Slovenian</option>
                                                                    <option  value="so">Somali</option>
                                                                    <option  value="st">Sotho, Southern</option>
                                                                    <option  value="nr">South Ndebele</option>
                                                                    <option  value="es">Spanish, Castilian</option>
                                                                    <option  value="su">Sundanese</option>
                                                                    <option  value="sw">Swahili</option>
                                                                    <option  value="ss">Swati</option>
                                                                    <option  value="sv">Swedish</option>
                                                                    <option  value="tl">Tagalog</option>
                                                                    <option  value="ty">Tahitian</option>
                                                                    <option  value="tg">Tajik</option>
                                                                    <option  value="ta">Tamil</option>
                                                                    <option  value="tt">Tatar</option>
                                                                    <option  value="te">Telugu</option>
                                                                    <option  value="th">Thai</option>
                                                                    <option  value="bo">Tibetan</option>
                                                                    <option  value="ti">Tigrinya</option>
                                                                    <option  value="to">Tonga (Tonga Islands)</option>
                                                                    <option  value="ts">Tsonga</option>
                                                                    <option  value="tn">Tswana</option>
                                                                    <option  value="tr">Turkish</option>
                                                                    <option  value="tk">Turkmen</option>
                                                                    <option  value="tw">Twi</option>
                                                                    <option  value="ug">Uighur, Uyghur</option>
                                                                    <option  value="uk">Ukrainian</option>
                                                                    <option  value="ur">Urdu</option>
                                                                    <option  value="uz">Uzbek</option>
                                                                    <option  value="ve">Venda</option>
                                                                    <option  value="vi">Vietnamese</option>
                                                                    <option  value="vo">Volap_k</option>
                                                                    <option  value="wa">Walloon</option>
                                                                    <option  value="cy">Welsh</option>
                                                                    <option  value="fy">Western Frisian</option>
                                                                    <option  value="wo">Wolof</option>
                                                                    <option  value="xh">Xhosa</option>
                                                                    <option  value="yi">Yiddish</option>
                                                                    <option  value="yo">Yoruba</option>
                                                                    <option  value="za">Zhuang, Chuang</option>
                                                                    <option  value="zu">Zulu</option>
                                                                </select>
                            </span> 
                        </div>
                    </div>
                                        <div class="col-md-12 col-sm-6 col-xs-6">
                      <div class="form-group"> 
                        <span class="select">
                            <select class="directory_type" name="directory_type">
                              <option value="">Category</option>
                                                                  <option  data-dir_name="Doctor" id="127" value="doctor">Doctor</option>
                                                                        <option  data-dir_name="hospital" id="126" value="hospital">Hospital</option>
                                                                        <option  data-dir_name="clinic" id="125" value="clinic">Clinic</option>
                                                                        <option  data-dir_name="Pharmacy" id="123" value="pharmacy">Pharmacy</option>
                                                                        <option  data-dir_name="Blood Bank" id="122" value="blood-bank">Blood Bank</option>
                                                                        <option  data-dir_name="Fitness Center" id="121" value="fitness-center">Fitness Center</option>
                                    	
                            </select>
                        </span> 
                             <script>
                                jQuery(document).ready(function() {
                                    var Z_Editor = {};
                                    Z_Editor.elements = {};
                                    window.Z_Editor = Z_Editor;
                                    Z_Editor.elements = jQuery.parseJSON( '{\"127\":{\"cardiologist\":\"Cardiologist\",\"colorectal-surgeon\":\"Colorectal surgeon\",\"dentist\":\"Dentist\",\"dermatologist\":\"Dermatologist\",\"dietician\":\"Dietician\",\"eye-doctor\":\"Eye Doctor\",\"eye-nose-ear-ent-specialist\":\"Eye, Nose, Ear (ENT) specialist\",\"nephrologist\":\"Nephrologist\",\"neurosurgeon\":\"Neurosurgeon\",\"nutritionist\":\"Nutritionist\",\"oncologist\":\"Oncologist\",\"ophthalmologist\":\"Ophthalmologist\",\"orthodontist\":\"Orthodontist\",\"orthopedic-surgeon\":\"Orthopedic Surgeon\",\"pediatrician\":\"Pediatrician\",\"physiotherapist\":\"Physiotherapist\",\"plastic-surgeon\":\"Plastic surgeon\",\"primary-care-doctor\":\"Primary care doctor\",\"psychiatrist\":\"Psychiatrist\",\"psychologist\":\"Psychologist\"},\"126\":{\"cancer-hospital\":\"Cancer Hospital\",\"children-hospital\":\"Children Hospital\",\"psychiatric-hospital\":\"Psychiatric Hospital\",\"rehabilitation-hospital\":\"Rehabilitation Hospital\",\"trauma-centre\":\"Trauma Centre\"},\"125\":{\"cardiology-clinic\":\"Cardiology clinic\",\"children-clinic\":\"Children clinic\",\"dermatology-clinic\":\"Dermatology clinic\",\"ent-clinic\":\"ENT clinic\",\"family-clinic\":\"Family clinic\"},\"123\":{\"clinical-pharmacy\":\"Clinical pharmacy\",\"community-pharmacy\":\"Community pharmacy\",\"compliance-medicine\":\"Compliance (medicine)\",\"distribution-pharmacology\":\"Distribution (pharmacology)\",\"drug-reaction-testing\":\"Drug reaction testing\",\"drug-therapy-problems\":\"Drug therapy problems\"},\"122\":{\"associazione-volontari-italiani-sangue\":\"Associazione Volontari\",\"blood-services\":\"Blood Services\",\"blood-services-center-for-biologics-evaluation-and-research\":\"Blood Services Center\",\"community-blood-services\":\"Community Blood Services\",\"cord-blood-registry\":\"Cord Blood Registry\",\"general-blood-bank\":\"General Blood Bank\",\"international-society-of-blood-transfusion\":\"International Society of Blood Transfusion\"},\"121\":{\"aerobic-centers\":\"Aerobic Centers\",\"athletic-clubs\":\"Athletic Clubs\",\"country-clubs\":\"Country Clubs\",\"dance-centers\":\"Dance Centers\",\"gyms\":\"Gyms\",\"pilates-centers\":\"Pilates Centers\",\"yoga-centers\":\"Yoga Centers\"}}' );
									
                                });
                            </script> 
                            <script type="text/template" id="tmpl-load-subcategories">
								<option value="">{{data['parent']}} - Specialities</option>
								<#
									var _option	= '';
									if( !_.isEmpty(data['childrens']) ) {
										_.each( data['childrens'] , function(element, index, attr) { #>
											 <option value="{{index}}">{{element}}</option>
										<#	
										});
									}
								#>
							</script> 
                       </div>
                    </div>
                    <div class="col-md-12 col-sm-6 col-xs-6">
                        <div class="form-group"> 
                            <span class="select">
                                <select class="group subcats" name="speciality">
                                  <option value="">Select Speciality</option>
                                                                  </select>
                            </span> 
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                      <button type="submit" class="tg-btn pull-left">Search</button>
                      <input type="hidden" name="view" value="list" />
                    </div>
					<div class="col-sm-6 col-xs-6">
                      <button type="reset" class="tg-btn tg-btn-reset pull-right"> <i class="fa fa-rotate-left"></i> <span>Reset</span> </button>
                    </div>
                  </div>
                </fieldset>
            </div>
          </div>
      </div>
      <div class="col-md-8 col-sm-12 col-xs-12 pull-right">
      	<div class="tg-doctors-list tg-haslayout">
        	<div class="tg-doclisthead">
              <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-6">
                  <div class="form-group"> 
                    <span class="select">
                        <select class="group sort_by" name="sort_by" id="sort_by">
                          <option value="">Sort By</option>
                          <option value="recent" >Most recent</option>
                          <option value="featured" >Featured</option>
                          <option value="title" >Alphabetical</option>
                        </select>
                    </span> 
                   </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                  <div class="form-group"> 
                    <span class="select">
                        <select class="group order_by" name="order" id="order">
                          <option value="ASC" >ASC</option>
                          <option value="DESC" >DESC</option>
                        </select>
                    </span> 
                   </div>
                </div>
                <div class="col-md-6 col-sm-4 col-xs-12">
                  <ul class="tg-listing-views">
                    <li class=""><a href="javascript:;" class="grid"><i class="fa fa-th-large"></i></a></li>
                    <li class="active"><a href="javascript:;" class="list"><i class="fa fa-th-list"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
      	<div class="tg-view tg-list-view">
          <div class="row">
          	                            <article class="tg-doctor-profile user-305">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/clinic/trustcare/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/8-1-270x270.jpg" alt="Trust Care Center"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/clinic/trustcare/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/8-1-370x200.jpg" alt="Trust Care Center"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="305" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:80%"></span>
            </span>
            
            					<em>4.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/clinic/trustcare/">Trust Care Center</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										217A Bramley Rd, London N14 4XB, UK</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:trust@docdirect.com?subject:Hello">trust@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0142</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-297">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/dumbells/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/10-270x270.jpg" alt="Dumbells Smart"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/dumbells/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/10-370x200.jpg" alt="Dumbells Smart"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="297" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:80%"></span>
            </span>
            
            					<em>4.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/fitness-center/dumbells/">Dumbells Smart</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										28-32 Blinco Ln, George Green, Slou...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:dumbells@docdirect.com?subject:Hello">dumbells@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0134</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-290">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/smart/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/3-270x270.jpg" alt="Smart Gym"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/smart/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/3-370x200.jpg" alt="Smart Gym"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="290" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:100%"></span>
            </span>
            
            					<em>5.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/fitness-center/smart/">Smart Gym</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										245 Watford Rd, Harrow, Greater Lon...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>46 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:smart@docdirect.com?subject:Hello">smart@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0127</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-289">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/slim/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/2-270x270.jpg" alt="Slim Gym"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/slim/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/2-370x200.jpg" alt="Slim Gym"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="289" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:80%"></span>
            </span>
            
            					<em>4.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/fitness-center/slim/">Slim Gym</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										109 A4088, London NW10, UK</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>45 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:slim@docdirect.com?subject:Hello">slim@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0126</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-321">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/blood-bank/shifa/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/9-1-270x270.jpg" alt="Shifa Blood Bank"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/blood-bank/shifa/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/9-1-370x200.jpg" alt="Shifa Blood Bank"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="321" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:80%"></span>
            </span>
            
            					<em>4.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/blood-bank/shifa/">Shifa Blood Bank</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										College Green Court, 55-57 Barringt...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:shifa@docdirect.com?subject:Hello">shifa@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0158</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-319">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/blood-bank/san/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/7-3-270x270.jpg" alt="San Diego Blood Bank"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/blood-bank/san/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/7-3-370x200.jpg" alt="San Diego Blood Bank"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="319" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:60%"></span>
            </span>
            
            					<em>3.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/blood-bank/san/">San Diego Blood Bank</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										1A Queen&#039;s Gate, Kensington, L...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:san@docdirect.com?subject:Hello">san@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0156</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-308">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/hospital/redwood/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/3-1-270x270.jpg" alt="Redwood Street Medical Center"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/hospital/redwood/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/3-1-370x200.jpg" alt="Redwood Street Medical Center"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="308" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:40%"></span>
            </span>
            
            					<em>2.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/hospital/redwood/">Redwood Street Medical Center</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										656 Harrow Rd, Wembley, Greater Lon...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:redwood@docdirect.com?subject:Hello">redwood@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0145</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-296">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/popular/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/9-270x270.jpg" alt="Popular Gym"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/popular/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/9-370x200.jpg" alt="Popular Gym"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="296" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                    <span class="tg-featuredtags">
            <a class="tg-featured" href="javascript:;">featured</a>
        </span>
                                                                                                    <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:100%"></span>
            </span>
            
            					<em>5.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/fitness-center/popular/">Popular Gym</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										N Circular Rd, London N11, UK</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>52 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:popular@docdirect.com?subject:Hello">popular@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0133</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-295">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/nowe/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/8-270x270.jpg" alt="No Weight"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/fitness-center/nowe/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/8-370x200.jpg" alt="No Weight"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="295" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:60%"></span>
            </span>
            
            					<em>3.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/fitness-center/nowe/">No Weight</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										146 Enfield Rd, Enfield, Greater Lo...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>51 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:noweight@docdirect.com?subject:Hello">noweight@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0132</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                                <article class="tg-doctor-profile user-298">
                              <div class="tg-box">
                                <figure class="tg-docprofile-img">
                                    <a href="https://themographics.com/wordpress/docdirect/clinic/mivine/" class="list-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/01-1-270x270.jpg" alt="Mivine Health Center"></a>
                                    <a href="https://themographics.com/wordpress/docdirect/clinic/mivine/"  class="grid-avatar"><img src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/01-1-370x200.jpg" alt="Mivine Health Center"></a>
                                    
                                    <a class="tg-like add-to-fav" data-wl_id="298" href="javascript:;"><i class="fa fa-heart"></i></a>                                                                                            <span class="user-verified">
                        <svg id="Icon" xmlns="http://www.w3.org/2000/svg" width="74.875" height="21" viewBox="0 0 74.875 21"> <defs>
						<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}</style></defs> 
						<rect id="BG" class="cls-1" width="74.875" height="21" rx="3" ry="3"/> <text id="_" data-name="" class="cls-2" transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
						<text id="Verified" class="cls-3" transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>
    
                    </span>
				                                            <div class="feature-rating user-star-rating">
            <span class="tg-stars star-rating">
                <span style="width:60%"></span>
            </span>
            
            					<em>3.0<sub>/5</sub></em>
			        </div>
                                        </figure>
                                <div class="tg-docprofile-content">
                                  
                                  <div class="tg-heading-border tg-small">
                                    <h3><a href="https://themographics.com/wordpress/docdirect/clinic/mivine/">Mivine Health Center</a></h3>
                                  </div>
                                                                        <div class="tg-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. </p>
                                      </div>
                                                                    <ul class="tg-doccontactinfo">
                                                                            <li><i class="fa fa-map-marker"></i><address>
										211 Shenley Rd, Borehamwood, Hertfo...</address></li>
                                                                                                                <li><i class="fa fa-phone"></i><span>53 235 856843</span></li>
                                                                                                                <li><i class="fa fa-envelope-o"></i><a href="mailto:mivine@docdirect.com?subject:Hello">mivine@docdirect.com</a></li>
                                    									                                        <li><i class="fa fa-fax"></i><span>202-555-0135</span></li>
                                                                                                            	<li><i class="fa fa-link"></i><a href="http://www.company.com">http://www.company.com</a></li>
                                                                      </ul>
                                </div>
                              </div>
                            </article>
                                    				<script>
					jQuery(document).ready(function() {
						 /* Init Markers */
						docdirect_init_map_script({"status":"found","users_list":[{"latitude":"51.649663","longitude":"-0.128196","fax":"202-555-0142","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Trust Care Center","name":"Trust Care Center","email":"trust@docdirect.com","phone_number":"53 235 856843","address":"217A Bramley Rd, London N14 4XB, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/clinic\/trustcare\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/8-1-270x270.jpg\" alt=\"Trust Care Center\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"305\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:80%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>4.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/clinic\/trustcare\/\">Trust Care Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:trust@docdirect.com?Subject=hello\"  target=\"_top\">trust@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>217A Bramley Rd, London N14 4XB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.521923","longitude":"-0.556294","fax":"202-555-0134","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Smart-Dumbells","name":"Dumbells Smart","email":"dumbells@docdirect.com","phone_number":"53 235 856843","address":"28-32 Blinco Ln, George Green, Slough, Buckinghamshire SL3, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/dumbells\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/10-270x270.jpg\" alt=\"Dumbells Smart\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"297\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:80%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>4.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/dumbells\/\">Dumbells Smart<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dumbells@docdirect.com?Subject=hello\"  target=\"_top\">dumbells@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>28-32 Blinco Ln, George Green, Slough, Buckinghamshire SL3, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.567966","longitude":"-0.321633","fax":"202-555-0127","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Smart Gym","name":"Smart Gym","email":"smart@docdirect.com","phone_number":"46 235 856843","address":"245 Watford Rd, Harrow, Greater London HA1 3TU, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/smart\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-270x270.jpg\" alt=\"Smart Gym\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"290\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:100%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>5.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/smart\/\">Smart Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:smart@docdirect.com?Subject=hello\"  target=\"_top\">smart@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">46 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>245 Watford Rd, Harrow, Greater London HA1 3TU, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.552726","longitude":"-0.243218","fax":"202-555-0126","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Slim Gym","name":"Slim Gym","email":"slim@docdirect.com","phone_number":"45 235 856843","address":"109 A4088, London NW10, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/slim\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-270x270.jpg\" alt=\"Slim Gym\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"289\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:80%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>4.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/slim\/\">Slim Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:slim@docdirect.com?Subject=hello\"  target=\"_top\">slim@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">45 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>109 A4088, London NW10, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.464071","longitude":"-0.107486","fax":"202-555-0158","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Shifa Blood Bank","name":"Shifa Blood Bank","email":"shifa@docdirect.com","phone_number":"53 235 856843","address":"College Green Court, 55-57 Barrington Rd, Brixton, London SW9 7JG, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/blood-bank\/shifa\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/9-1-270x270.jpg\" alt=\"Shifa Blood Bank\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"321\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:80%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>4.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/blood-bank\/shifa\/\">Shifa Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:shifa@docdirect.com?Subject=hello\"  target=\"_top\">shifa@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>College Green Court, 55-57 Barrington Rd, Brixton, London SW9 7JG, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.500826","longitude":"-0.180544","fax":"202-555-0156","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"San Diego Blood Bank","name":"San Diego Blood Bank","email":"san@docdirect.com","phone_number":"53 235 856843","address":"1A Queen&#039;s Gate, Kensington, London SW7 5EH, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/blood-bank\/san\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/7-3-270x270.jpg\" alt=\"San Diego Blood Bank\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"319\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:60%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>3.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/blood-bank\/san\/\">San Diego Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:san@docdirect.com?Subject=hello\"  target=\"_top\">san@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>1A Queen&#039;s Gate, Kensington, London SW7 5EH, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.552102","longitude":"-0.311115","fax":"202-555-0145","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Redwood Street Medical Center","name":"Redwood Street Medical Center","email":"redwood@docdirect.com","phone_number":"53 235 856843","address":"656 Harrow Rd, Wembley, Greater London HA0 2HB, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/hospital\/redwood\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-1-270x270.jpg\" alt=\"Redwood Street Medical Center\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"308\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:40%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>2.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/hospital\/redwood\/\">Redwood Street Medical Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:redwood@docdirect.com?Subject=hello\"  target=\"_top\">redwood@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>656 Harrow Rd, Wembley, Greater London HA0 2HB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.60988","longitude":"-0.140305","fax":"202-555-0133","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"Popular-Gym","name":"Popular Gym","email":"popular@docdirect.com","phone_number":"52 235 856843","address":"N Circular Rd, London N11, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/popular\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/9-270x270.jpg\" alt=\"Popular Gym\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"296\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\r\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\r\n        <\/span>\r\n                            <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:100%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>5.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/popular\/\">Popular Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:popular@docdirect.com?Subject=hello\"  target=\"_top\">popular@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">52 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>N Circular Rd, London N11, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.653482","longitude":"-0.115183","fax":"202-555-0132","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"No Weight Gym","name":"No Weight","email":"noweight@docdirect.com","phone_number":"51 235 856843","address":"146 Enfield Rd, Enfield, Greater London EN2 7HB, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/nowe\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/8-270x270.jpg\" alt=\"No Weight\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"295\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:60%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>3.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/fitness-center\/nowe\/\">No Weight<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:noweight@docdirect.com?Subject=hello\"  target=\"_top\">noweight@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">51 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>146 Enfield Rd, Enfield, Greater London EN2 7HB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.657965","longitude":"0.271685","fax":"202-555-0135","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam. Eascxcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.","title":"MivineHealth Center","name":"Mivine Health Center","email":"mivine@docdirect.com","phone_number":"53 235 856843","address":"211 Shenley Rd, Borehamwood, Hertfordshire WD6 1AT, UK","group":"","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/clinic\/mivine\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-1-270x270.jpg\" alt=\"Mivine Health Center\"><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"298\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\r\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs>\r\n\t\t\t\t\t\t<style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> \r\n\t\t\t\t\t\t<rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> \r\n\t\t\t\t\t\t<text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\r\n    \r\n                    <\/span>\r\n\t\t\t\t        <div class=\"feature-rating user-star-rating\">\r\n            <span class=\"tg-stars star-rating\">\r\n                <span style=\"width:60%\"><\/span>\r\n            <\/span>\r\n            \r\n            \t\t\t\t\t<em>3.0<sub>\/5<\/sub><\/em>\r\n\t\t\t        <\/div>\r\n        <\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/clinic\/mivine\/\">Mivine Health Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:mivine@docdirect.com?Subject=hello\"  target=\"_top\">mivine@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-home\"><\/i> <address>211 Shenley Rd, Borehamwood, Hertfordshire WD6 1AT, UK<\/address> <\/li><\/ul><\/div><\/div>"}}]});
					});
				</script>
                 
          	</div>
            
        </div>
                  <div class="tg-btnarea">
                <div class="tg-pagination"><ul><li><a  class='active' href='javascript:;'>1</a></li><li><a href='https://themographics.com/wordpress/docdirect/dir-search/page/2/?view=list' class="inactive">2</a></li><li><a href='https://themographics.com/wordpress/docdirect/dir-search/page/3/?view=list' class="inactive">3</a></li><li><a href='https://themographics.com/wordpress/docdirect/dir-search/page/4/?view=list' class="inactive">4</a></li><li><a href='https://themographics.com/wordpress/docdirect/dir-search/page/5/?view=list' class="inactive">5</a></li><li><a href='https://themographics.com/wordpress/docdirect/dir-search/page/6/?view=list' class="inactive">6</a></li><li class='tg-next'><a  class='' href="https://themographics.com/wordpress/docdirect/dir-search/page/2/?view=list"><i class="fa fa-angle-right"></i></a></li></ul></div>          </div>
              </div>
    </div>
   	  </form>
  </div>
</div>
	
			</main>
			
       <jsp:include page="footer.jsp"></jsp:include>