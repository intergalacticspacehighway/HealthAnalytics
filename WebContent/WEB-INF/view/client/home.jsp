
<jsp:include page="header.jsp"></jsp:include>

<main id="main" class="tg-page-wrapper tg-haslayout">
<div class="container">
	<div class="row">
		<div class="main-page-wrapper tg-haslayout">
			<div class="fw-page-builder-content">
				<section
					class="tg-main-section haslayout   stretch_section_contents_corner stretch_section stretch_data"
					style="margin-top: -100px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-dir-search v1">
								<div id="tg-homebanner"
									class="tg-homebanner tg-overflowhidden tg-haslayout">
									<div id="map_canvas" class="tg-location-map tg-haslayout"></div>
									<div class="map-controls">
										<span id="doc-mapplus"><i class="fa fa-plus"></i></span> <span
											id="doc-mapminus"><i class="fa fa-minus"></i></span> <span
											id="doc-lock"><i class="fa fa-lock"></i></span>
									</div>
									<div id="gmap-noresult"></div>
									<div class="tg-banner-content">
										<div class="tg-displaytable">
											<div class="tg-displaytablecell">
												<div class="container">
													<form action="search.html?q=" method="post">
														<div class="col-md-3 col-sm-5 col-xs-3 tg-verticalmiddle">
															<div class="row">
																<ul id="tg-sortable" class="tg-tabs-nav tg-sortable"
																	role="tablist">
																	<li data-dir_name="Doctor" data-id="127" id="doctor"
																		class="active current-directory"><input
																		type="radio" checked name="directory_type" id="127"
																		value="127" /> <label for="127"> <i
																			class="fa fa-user-md"></i> <span class="tg-category">
																				<span class="tg-category-name">Doctor</span>

																		</span>
																	</label></li>
																	<li data-dir_name="hospital" data-id="126" id="hospital"
																		class=" current-directory"><input type="radio"
																		name="directory_type" id="126" value="126" /> <label
																		for="126"> <i class=" fa fa-hospital-o"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Hospital</span>

																		</span>
																	</label></li>
																	<li data-dir_name="clinic" data-id="125" id="clinic"
																		class=" current-directory"><input type="radio"
																		name="directory_type" id="125" value="125" /> <label
																		for="125"> <i class="fa fa-stethoscope"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Clinic</span>

																		</span>
																	</label></li>
																	<li data-dir_name="Pharmacy" data-id="123" id="symptomChecker"
																		class=" current-directory"><input type="radio"
																		name="directory_type" id="123" value="123" /> <label
																		for="123"> <i class=" fa fa-heartbeat"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Symptom Checker</span>

																		</span>
																	</label></li>


																</ul>
																<script>
					jQuery(document).ready(function() {
						var Z_Editor = {};
						Z_Editor.elements = {};
						window.Z_Editor = Z_Editor;
						Z_Editor.elements = jQuery.parseJSON( '{\"127\":{\"cardiologist\":\"Cardiologist\",\"colorectal-surgeon\":\"Colorectal surgeon\",\"dentist\":\"Dentist\",\"dermatologist\":\"Dermatologist\",\"dietician\":\"Dietician\",\"eye-doctor\":\"Eye Doctor\",\"eye-nose-ear-ent-specialist\":\"Eye, Nose, Ear (ENT) specialist\",\"nephrologist\":\"Nephrologist\",\"neurosurgeon\":\"Neurosurgeon\",\"nutritionist\":\"Nutritionist\",\"oncologist\":\"Oncologist\",\"ophthalmologist\":\"Ophthalmologist\",\"orthodontist\":\"Orthodontist\",\"orthopedic-surgeon\":\"Orthopedic Surgeon\",\"pediatrician\":\"Pediatrician\",\"physiotherapist\":\"Physiotherapist\",\"plastic-surgeon\":\"Plastic surgeon\",\"primary-care-doctor\":\"Primary care doctor\",\"psychiatrist\":\"Psychiatrist\",\"psychologist\":\"Psychologist\"},\"126\":{\"cancer-hospital\":\"Cancer Hospital\",\"children-hospital\":\"Children Hospital\",\"psychiatric-hospital\":\"Psychiatric Hospital\",\"rehabilitation-hospital\":\"Rehabilitation Hospital\",\"trauma-centre\":\"Trauma Centre\"},\"125\":{\"cardiology-clinic\":\"Cardiology clinic\",\"children-clinic\":\"Children clinic\",\"dermatology-clinic\":\"Dermatology clinic\",\"ent-clinic\":\"ENT clinic\",\"family-clinic\":\"Family clinic\"},\"123\":{\"clinical-pharmacy\":\"Clinical pharmacy\",\"community-pharmacy\":\"Community pharmacy\",\"compliance-medicine\":\"Compliance (medicine)\",\"distribution-pharmacology\":\"Distribution (pharmacology)\",\"drug-reaction-testing\":\"Drug reaction testing\",\"drug-therapy-problems\":\"Drug therapy problems\"},\"122\":{\"associazione-volontari-italiani-sangue\":\"Associazione Volontari\",\"blood-services\":\"Blood Services\",\"blood-services-center-for-biologics-evaluation-and-research\":\"Blood Services Center\",\"community-blood-services\":\"Community Blood Services\",\"cord-blood-registry\":\"Cord Blood Registry\",\"general-blood-bank\":\"General Blood Bank\",\"international-society-of-blood-transfusion\":\"International Society of Blood Transfusion\"},\"121\":{\"aerobic-centers\":\"Aerobic Centers\",\"athletic-clubs\":\"Athletic Clubs\",\"country-clubs\":\"Country Clubs\",\"dance-centers\":\"Dance Centers\",\"gyms\":\"Gyms\",\"pilates-centers\":\"Pilates Centers\",\"yoga-centers\":\"Yoga Centers\"}}' );
						
						jQuery('.current_directory').html("Doctor");
						 /* Init Markers */
						docdirect_init_map_script({"status":"found","users_list":[{"latitude":"36.858751","longitude":"10.164048999999977","title":"Demo Professional","name":"alex alex","email":"demo@docdirect.com","phone_number":"+5076525-5454","address":"Clinique V\u00e9t\u00e9rinaire Ennasr 1, Ariana, Tunisie","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/professional\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/themes\/docdirect\/images\/user270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"340\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\n        <\/span>\n                            <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/professional\/\">alex alex<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:demo@docdirect.com?Subject=hello\" target=\"_top\">demo@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">+5076525-5454<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>Clinique V\u00e9t\u00e9rinaire Ennasr 1, Ariana, Tunisie<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.527112","longitude":"-0.183141","title":"Dr.Anna","name":"Dr Anna","email":"ana@docdirect.com","phone_number":"61 235 856843","address":"91 Warrington Cres, London W9 1EH, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/anna\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-09-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"337\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/anna\/\">Dr Anna<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:ana@docdirect.com?Subject=hello\" target=\"_top\">ana@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">61 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>91 Warrington Cres, London W9 1EH, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.512658","longitude":"-0.290866","title":"Dr.Carol","name":"Dr Carol","email":"cr@docdirect.com","phone_number":"57 235 856843","address":"28 Gatcombe Mews, Hanger Ln, London W5 3HF, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/carol\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-04-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"333\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/carol\/\">Dr Carol<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:cr@docdirect.com?Subject=hello\" target=\"_top\">cr@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">57 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>28 Gatcombe Mews, Hanger Ln, London W5 3HF, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.504872","longitude":"-0.20215","title":"Dr.Celia","name":"Dr Celia","email":"dc@docdirect.com","phone_number":"60 235 856843","address":"Holland Walk, Kensington, London W8, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/celia\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-07-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"336\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/celia\/\">Dr Celia<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dc@docdirect.com?Subject=hello\" target=\"_top\">dc@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">60 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>Holland Walk, Kensington, London W8, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.491429","longitude":"-0.217536","title":"Dr.Delia","name":"Dr Delia","email":"dl@docdirect.com","phone_number":"58 235 856843","address":"Great Church Ln, London W6 8DQ, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/delia\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-05-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"334\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/delia\/\">Dr Delia<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dl@docdirect.com?Subject=hello\" target=\"_top\">dl@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">58 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>Great Church Ln, London W6 8DQ, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.518315","longitude":"-0.323132","title":"Dr.Ella","name":"Dr Ella","email":"ell@docdirect.com","phone_number":"59 235 856843","address":"73C Argyle Rd, London W13 0LY, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/ella\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-06-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"335\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/ella\/\">Dr Ella<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:ell@docdirect.com?Subject=hello\" target=\"_top\">ell@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">59 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>73C Argyle Rd, London W13 0LY, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.5179","longitude":"-0.256957","title":"Dr.Giovanni","name":"Dr Giovanni","email":"ge@docdirect.com","phone_number":"55 235 856843","address":"118 Long Dr, London W3 7PH, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/giovanni\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-02-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"331\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/giovanni\/\">Dr Giovanni<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:ge@docdirect.com?Subject=hello\" target=\"_top\">ge@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">55 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>118 Long Dr, London W3 7PH, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.494791","longitude":"-0.254058","title":"dr.Richard","name":"Dr Richard","email":"rc@docdirect.com","phone_number":"56 235 856843","address":"82B Thornton Ave, Chiswick, London W4 1QQ, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/richard\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-03-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"332\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/richard\/\">Dr Richard<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:rc@docdirect.com?Subject=hello\" target=\"_top\">rc@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">56 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>82B Thornton Ave, Chiswick, London W4 1QQ, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.510243","longitude":"-0.19093","title":"Dr.Steve","name":"Dr Steve","email":"etwordpress01@gmail.com","phone_number":"54 235 856843","address":"154 Bayswater Rd, London W2 4HP, UK","group":"doctor","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/steve\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/img-01-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"330\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\n        <\/span>\n                            <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/steve\/\">Dr Steve<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:etwordpress01@gmail.com?Subject=hello\" target=\"_top\">etwordpress01@gmail.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">54 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>154 Bayswater Rd, London W2 4HP, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.570554","longitude":"-0.508516","title":"Clifton Avenue Medical Unit","name":"Clifton Avenue Medical Unit","email":"clifton@docdirect.com","phone_number":"53 235 856843","address":"A40, Denham, Uxbridge, Buckinghamshire UB9, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/cliftonavenue\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"307\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/cliftonavenue\/\">Clifton Avenue Medical Unit<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:clifton@docdirect.com?Subject=hello\" target=\"_top\">clifton@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>A40, Denham, Uxbridge, Buckinghamshire UB9, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.607757","longitude":"-0.184327","title":"Frankford General Hospital","name":"Frankford General Hospital","email":"frankford@docdirect.com","phone_number":"53 235 856843","address":"235 A598, London N3, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/frankford\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/5-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"310\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/frankford\/\">Frankford General Hospital<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:frankford@docdirect.com?Subject=hello\" target=\"_top\">frankford@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>235 A598, London N3, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.520954","longitude":"-0.554735","title":"Greene-Markham Hospital","name":"Greene-Markham Hospital","email":"greene@docdirect.com","phone_number":"53 235 856843","address":"1 Coronation Ave, George Green, Slough, Buckinghamshire SL3 6RF, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/greene\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/6-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"311\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/greene\/\">Greene-Markham Hospital<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:greene@docdirect.com?Subject=hello\" target=\"_top\">greene@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>1 Coronation Ave, George Green, Slough, Buckinghamshire SL3 6RF, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.561534","longitude":"-0.498284","title":"Hill Street Medical Facility","name":"Hill Street Medical Facility","email":"hill@docdirect.com","phone_number":"53 235 856843","address":"M40, Denham, Uxbridge, Buckinghamshire UB9 4HA, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hill\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/4-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"309\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hill\/\">Hill Street Medical Facility<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:hill@docdirect.com?Subject=hello\" target=\"_top\">hill@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>M40, Denham, Uxbridge, Buckinghamshire UB9 4HA, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.52275","longitude":"-0.35391","title":"Lake Drive Medical Center","name":"Lake Drive Medical Center","email":"lake@docdirect.com","phone_number":"53 235 856843","address":"102 Greenford Rd, Greenford, Greater London UB6, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/lakedrive\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"306\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/lakedrive\/\">Lake Drive Medical Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:lake@docdirect.com?Subject=hello\" target=\"_top\">lake@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>102 Greenford Rd, Greenford, Greater London UB6, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.675401","longitude":"-0.602891","title":"Medical Facility","name":"Lawrence Center","email":"medical@docdirect.com","phone_number":"53 235 856843","address":"King George V Rd, Amersham, Buckinghamshire HP6, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/lawrence\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/7-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"312\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/lawrence\/\">Lawrence Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:medical@docdirect.com?Subject=hello\" target=\"_top\">medical@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>King George V Rd, Amersham, Buckinghamshire HP6, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.552102","longitude":"-0.311115","title":"Redwood Street Medical Center","name":"Redwood Street Medical Center","email":"redwood@docdirect.com","phone_number":"53 235 856843","address":"656 Harrow Rd, Wembley, Greater London HA0 2HB, UK","group":"hospital","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/03.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/redwood\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"308\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/redwood\/\">Redwood Street Medical Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:redwood@docdirect.com?Subject=hello\" target=\"_top\">redwood@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>656 Harrow Rd, Wembley, Greater London HA0 2HB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.693536","longitude":"-0.232837","title":"Ambias Clinic","name":"Ambias Clinic","email":"ambias@docdirect.com","phone_number":"53 235 856843","address":"White House, Greyhound Ln, South Mimms, Potters Bar, Hertfordshire EN6 3NX, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/ambias\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/02-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"300\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/ambias\/\">Ambias Clinic<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:ambias@docdirect.com?Subject=hello\" target=\"_top\">ambias@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>White House, Greyhound Ln, South Mimms, Potters Bar, Hertfordshire EN6 3NX, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.626505","longitude":"-0.070844","title":"CareOnline Center","name":"CareOnline Center","email":"care-online@docdirect.com","phone_number":"53 235 856843","address":"13 Hydeside Gardens, London N9 9RP, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/careonline\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/5-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"302\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/careonline\/\">CareOnline Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:care-online@docdirect.com?Subject=hello\" target=\"_top\">care-online@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>13 Hydeside Gardens, London N9 9RP, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.5989","longitude":"-0.330043","title":"Dcotors Care","name":"Dcotors Care","email":"doctors@docdirect.com","phone_number":"53 235 856843","address":"56 Warham Rd, Harrow, Greater London HA3 7JB, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dcotors\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"299\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dcotors\/\">Dcotors Care<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:doctors@docdirect.com?Subject=hello\" target=\"_top\">doctors@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>56 Warham Rd, Harrow, Greater London HA3 7JB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.624836","longitude":"0.082706","title":"DocClinic Center","name":"DocClinic Center","email":"doc@docdirect.com","phone_number":"53 235 856843","address":"London Loop, Chigwell, Essex IG7 6QB, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/docclinic\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/7-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"304\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/docclinic\/\">DocClinic Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:doc@docdirect.com?Subject=hello\" target=\"_top\">doc@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>London Loop, Chigwell, Essex IG7 6QB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.588559","longitude":"-0.067885","title":"Express Care Clinics","name":"Express Care Clinics","email":"express@docdirect.com","phone_number":"53 235 856843","address":"62 Monument Way, London N17, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/express-care\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/6-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"303\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/express-care\/\">Express Care Clinics<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:express@docdirect.com?Subject=hello\" target=\"_top\">express@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>62 Monument Way, London N17, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.696312","longitude":"-0.170906","title":"Good Care Center","name":"Good Care Center","email":"care@docdirect.com","phone_number":"53 235 856843","address":"15 Chace Ave, Potters Bar, Hertfordshire EN6 5LX, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/good-care\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/4-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"301\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/good-care\/\">Good Care Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:care@docdirect.com?Subject=hello\" target=\"_top\">care@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>15 Chace Ave, Potters Bar, Hertfordshire EN6 5LX, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.657965","longitude":"0.271685","title":"MivineHealth Center","name":"Mivine Health Center","email":"mivine@docdirect.com","phone_number":"53 235 856843","address":"211 Shenley Rd, Borehamwood, Hertfordshire WD6 1AT, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/mivine\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"298\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/mivine\/\">Mivine Health Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:mivine@docdirect.com?Subject=hello\" target=\"_top\">mivine@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>211 Shenley Rd, Borehamwood, Hertfordshire WD6 1AT, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.649663","longitude":"-0.128196","title":"Trust Care Center","name":"Trust Care Center","email":"trust@docdirect.com","phone_number":"53 235 856843","address":"217A Bramley Rd, London N14 4XB, UK","group":"clinic","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Clinic.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/trustcare\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/8-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"305\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/trustcare\/\">Trust Care Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:trust@docdirect.com?Subject=hello\" target=\"_top\">trust@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>217A Bramley Rd, London N14 4XB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.523112","longitude":"-0.039935","title":"ACME Pharmacy","name":"Acme Pharmacy","email":"acme@docdirect.com","phone_number":"53 235 856843","address":"3 Mile End Rd, London E1 4QU, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/acme\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"322\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/acme\/\">Acme Pharmacy<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:acme@docdirect.com?Subject=hello\" target=\"_top\">acme@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>3 Mile End Rd, London E1 4QU, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.541693","longitude":"-0.064826","title":"Atlas Drugs","name":"Atlas Drugs","email":"atlas@docdirect.com","phone_number":"53 235 856843","address":"148 Mapledene Rd, London E8 3LL, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/atlas\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"323\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/atlas\/\">Atlas Drugs<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:atlas@docdirect.com?Subject=hello\" target=\"_top\">atlas@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>148 Mapledene Rd, London E8 3LL, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.544508","longitude":"-0.009514","title":"Bartell Drugs","name":"Bartell Drugs","email":"bartell@docdirect.com","phone_number":"53 235 856843","address":"Roundhouse Ln, London E15 2DU, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bartell\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"324\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\n        <\/span>\n                            <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bartell\/\">Bartell Drugs<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:bartell@docdirect.com?Subject=hello\" target=\"_top\">bartell@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>Roundhouse Ln, London E15 2DU, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.626944","longitude":"0.034316","title":"BJ`S Wholesale Club","name":"Bj`s Wholesale Club","email":"bjs@docdirect.com","phone_number":"53 235 856843","address":"106 Palmerston Rd, Buckhurst Hill, Essex IG9 5LG, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bjs\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/4-4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"325\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bjs\/\">Bj`s Wholesale Club<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:bjs@docdirect.com?Subject=hello\" target=\"_top\">bjs@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>106 Palmerston Rd, Buckhurst Hill, Essex IG9 5LG, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.563344","longitude":"-0.030204","title":"Buehler Pharmacy","name":"Buehler Pharmacy","email":"blu@docdirect.com","phone_number":"53 235 856843","address":"780 Orient Way, London E10, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/buehler\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/5-4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"326\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/buehler\/\">Buehler Pharmacy<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:blu@docdirect.com?Subject=hello\" target=\"_top\">blu@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>780 Orient Way, London E10, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.545148","longitude":"0.068476","title":"CVS Pharmacy","name":"CVS Pharmacy","email":"cvs@docdirect.com","phone_number":"53 235 856843","address":"North Circular Road, London E12, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/cvs\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/01-4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"327\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/cvs\/\">CVS Pharmacy<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:cvs@docdirect.com?Subject=hello\" target=\"_top\">cvs@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>North Circular Road, London E12, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.491608","longitude":"0.34942","title":"Dahls Pharmacy","name":"Dahls Pharmacy","email":"dahls@docdirect.com","phone_number":"53 235 856843","address":"16 Stanford Rd, Grays, Essex RM16 4XS, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dahls\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"328\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dahls\/\">Dahls Pharmacy<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dahls@docdirect.com?Subject=hello\" target=\"_top\">dahls@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>16 Stanford Rd, Grays, Essex RM16 4XS, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.543588","longitude":"-0.05515","title":"Dakota Drug","name":"Dakota Drug","email":"dk@docdirect.com","phone_number":"53 235 856843","address":"216 Mare St, London E8 3RD, UK","group":"pharmacy","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/03\/01.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dakota\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"329\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dakota\/\">Dakota Drug<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dk@docdirect.com?Subject=hello\" target=\"_top\">dk@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>216 Mare St, London E8 3RD, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.475252","longitude":"-0.213279","title":"BloodSource","name":"Blood Source","email":"blood@docdirect.com","phone_number":"53 235 856843","address":"16 Edgarley Terrace, Fulham, London SW6 6QF, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/blood\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"313\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/blood\/\">Blood Source<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:blood@docdirect.com?Subject=hello\" target=\"_top\">blood@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>16 Edgarley Terrace, Fulham, London SW6 6QF, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.405023","longitude":"-0.162749","title":"Community Blood Bank","name":"Community Blood Bank","email":"community@docdirect.com","phone_number":"53 235 856843","address":"41A Regal Ct, Upper Green E, Mitcham, Greater London CR4 2PF, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bloodbank\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"315\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/bloodbank\/\">Community Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:community@docdirect.com?Subject=hello\" target=\"_top\">community@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>41A Regal Ct, Upper Green E, Mitcham, Greater London CR4 2PF, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.439946","longitude":"-0.304224","title":"Central California Blood Center","name":"Central California Blood Center","email":"central@docdirect.com","phone_number":"53 235 856843","address":"247 Petersham Rd, Richmond, Greater London TW10 7DA, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/california\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"314\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/california\/\">Central California Blood Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:central@docdirect.com?Subject=hello\" target=\"_top\">central@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>247 Petersham Rd, Richmond, Greater London TW10 7DA, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.406697","longitude":"0.008528","title":"Delta Blood Bank","name":"Delta Blood Bank","email":"delta@docdirect.com","phone_number":"53 235 856843","address":"1 Beckenham Ln, Bromley, Greater London BR2 0DB, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/delta\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/4-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"316\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/delta\/\">Delta Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:delta@docdirect.com?Subject=hello\" target=\"_top\">delta@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>1 Beckenham Ln, Bromley, Greater London BR2 0DB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.479134","longitude":"-0.218468","title":"Hemacare","name":"Hema care","email":"hema@docdirect.com","phone_number":"53 235 856843","address":"8A Kenyon St, Fulham, London SW6 6LD, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hema\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/5-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"317\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hema\/\">Hema care<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:hema@docdirect.com?Subject=hello\" target=\"_top\">hema@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>8A Kenyon St, Fulham, London SW6 6LD, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.472505","longitude":"-0.201967","title":"Houchin Valley Blood Bank","name":"Houchin Valley Blood Bank","email":"houchinl@docdirect.com","phone_number":"53 235 856843","address":"72 New King&#039;s Rd, Fulham, London SW6 4LT, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/houchin\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/6-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"318\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/houchin\/\">Houchin Valley Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:houchinl@docdirect.com?Subject=hello\" target=\"_top\">houchinl@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>72 New King&#039;s Rd, Fulham, London SW6 4LT, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.479242","longitude":"-0.117246","title":"Marshall Community Blood Center","name":"Marshall Community Blood Center","email":"marshall@docdirect.com","phone_number":"53 235 856843","address":"23A Richborne Terrace, London SW8 1AS, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/marshall\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/8-2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"320\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/marshall\/\">Marshall Community Blood Center<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:marshall@docdirect.com?Subject=hello\" target=\"_top\">marshall@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>23A Richborne Terrace, London SW8 1AS, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.500826","longitude":"-0.180544","title":"San Diego Blood Bank","name":"San Diego Blood Bank","email":"san@docdirect.com","phone_number":"53 235 856843","address":"1A Queen&#039;s Gate, Kensington, London SW7 5EH, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/san\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/7-3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"319\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/san\/\">San Diego Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:san@docdirect.com?Subject=hello\" target=\"_top\">san@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>1A Queen&#039;s Gate, Kensington, London SW7 5EH, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.464071","longitude":"-0.107486","title":"Shifa Blood Bank","name":"Shifa Blood Bank","email":"shifa@docdirect.com","phone_number":"53 235 856843","address":"College Green Court, 55-57 Barrington Rd, Brixton, London SW9 7JG, UK","group":"blood-bank","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Bloog-Bank.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/shifa\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/9-1-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"321\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/shifa\/\">Shifa Blood Bank<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:shifa@docdirect.com?Subject=hello\" target=\"_top\">shifa@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>College Green Court, 55-57 Barrington Rd, Brixton, London SW9 7JG, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.577259","longitude":"-0.232151","title":"Better Bodies","name":"Better Bodies","email":"better@docdirect.com","phone_number":"50 235 856843","address":"54 Park Rd, London NW4 3PH, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/better\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/7-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"294\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\n        <\/span>\n                            <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/better\/\">Better Bodies<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:better@docdirect.com?Subject=hello\" target=\"_top\">better@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">50 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>54 Park Rd, London NW4 3PH, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.521923","longitude":"-0.556294","title":"Smart-Dumbells","name":"Dumbells Smart","email":"dumbells@docdirect.com","phone_number":"53 235 856843","address":"28-32 Blinco Ln, George Green, Slough, Buckinghamshire SL3, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dumbells\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/10-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"297\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/dumbells\/\">Dumbells Smart<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:dumbells@docdirect.com?Subject=hello\" target=\"_top\">dumbells@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">53 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>28-32 Blinco Ln, George Green, Slough, Buckinghamshire SL3, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.613408","longitude":"-0.121475","title":"Great Shape","name":"Great Shape","email":"shape@docdirect.com","phone_number":"47 235 856843","address":"2 Powys Ln, Arnos Grove, London N14 7JG, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/great\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/4-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"291\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/great\/\">Great Shape<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:shape@docdirect.com?Subject=hello\" target=\"_top\">shape@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">47 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>2 Powys Ln, Arnos Grove, London N14 7JG, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.595516","longitude":"-0.389313","title":"Hilton Head Fitness","name":"Hilton Head Head","email":"hilton@docdirect.com","phone_number":"49 235 856843","address":"102 W End Ln, Pinner, Greater London HA5 3NG, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hilton\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/6-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"293\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/hilton\/\">Hilton Head Head<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:hilton@docdirect.com?Subject=hello\" target=\"_top\">hilton@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">49 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>102 W End Ln, Pinner, Greater London HA5 3NG, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.536333","longitude":"-0.123161","title":"Island Fitness","name":"Island Fitness","email":"island@docdirect.com","phone_number":"48 235 856843","address":"1 York Way, Kings Cross, London N1C, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/island\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/5-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"292\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/island\/\">Island Fitness<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:island@docdirect.com?Subject=hello\" target=\"_top\">island@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">48 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>1 York Way, Kings Cross, London N1C, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.653482","longitude":"-0.115183","title":"No Weight Gym","name":"No Weight","email":"noweight@docdirect.com","phone_number":"51 235 856843","address":"146 Enfield Rd, Enfield, Greater London EN2 7HB, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/nowe\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/8-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"295\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/nowe\/\">No Weight<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:noweight@docdirect.com?Subject=hello\" target=\"_top\">noweight@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">51 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>146 Enfield Rd, Enfield, Greater London EN2 7HB, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.60988","longitude":"-0.140305","title":"Popular-Gym","name":"Popular Gym","email":"popular@docdirect.com","phone_number":"52 235 856843","address":"N Circular Rd, London N11, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/popular\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/9-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"296\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>        <span class=\"tg-featuredtags\">\n            <a class=\"tg-featured\" href=\"javascript:;\">featured<\/a>\n        <\/span>\n                            <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/popular\/\">Popular Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:popular@docdirect.com?Subject=hello\" target=\"_top\">popular@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">52 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>N Circular Rd, London N11, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.552726","longitude":"-0.243218","title":"Slim Gym","name":"Slim Gym","email":"slim@docdirect.com","phone_number":"45 235 856843","address":"109 A4088, London NW10, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/slim\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/2-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"289\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/slim\/\">Slim Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:slim@docdirect.com?Subject=hello\" target=\"_top\">slim@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">45 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>109 A4088, London NW10, UK<\/address> <\/li><\/ul><\/div><\/div>"}},{"latitude":"51.567966","longitude":"-0.321633","title":"Smart Gym","name":"Smart Gym","email":"smart@docdirect.com","phone_number":"46 235 856843","address":"245 Watford Rd, Harrow, Greater London HA1 3TU, UK","group":"fitness-center","icon":"\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/Fitness.png","html":{"content":"<div class=\"tg-map-marker\"><figure class=\"tg-docimg\"><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/smart\/\"><img src=\"https:\/\/themographics.com\/wordpress\/docdirect\/wp-content\/uploads\/2016\/04\/3-270x270.jpg\" alt=\"User\"><span class=\"tg-show\"><em class=\"icon-add\"><\/em><\/span><\/a><a class=\"tg-like add-to-fav\" data-wl_id=\"290\" href=\"javascript:;\"><i class=\"fa fa-heart\"><\/i><\/a>                    <span class=\"user-verified\">\n                        <svg id=\"Icon\" xmlns=\"http:\/\/www.w3.org\/2000\/svg\" width=\"74.875\" height=\"21\" viewBox=\"0 0 74.875 21\"> <defs><style>.cls-1{fill:#10a64a}.cls-2{font-size:16px;text-anchor:middle;font-family:FontAwesome;text-transform:uppercase}.cls-2,.cls-3{fill:#fff}.cls-3{font-size:14.437px;font-family:Montserrat}<\/style><\/defs> <rect id=\"BG\" class=\"cls-1\" width=\"74.875\" height=\"21\" rx=\"3\" ry=\"3\"\/> <text id=\"_\" data-name=\"\uf132\" class=\"cls-2\" transform=\"translate(14.829 14.99) scale(0.737 0.762)\">\uf132<\/text> <text id=\"Verified\" class=\"cls-3\" transform=\"translate(22.787 15.191) scale(0.737 0.762)\">Verified<\/text> <\/svg>\n    \n                    <\/span>\n\t\t\t\t<\/figure><div class=\"tg-mapmarker-content\"><div class=\"tg-heading-border tg-small\"><h3><a class=\"userlink\" href=\"https:\/\/themographics.com\/wordpress\/docdirect\/user\/smart\/\">Smart Gym<\/a><\/h3><\/div><ul class=\"tg-info\"><li> <i class=\"fa fa-envelope\"><\/i> <em><a href=\"mailto:smart@docdirect.com?Subject=hello\" target=\"_top\">smart@docdirect.com<\/a><\/em> <\/li><li> <i class=\"fa fa-phone\"><\/i> <em><a href=\"javascript:;\">46 235 856843<\/a><\/em> <\/li><li> <i class=\"fa fa-map-marker\"><\/i> <address>245 Watford Rd, Harrow, Greater London HA1 3TU, UK<\/address> <\/li><\/ul><\/div><\/div>"}}]});
					});
				</script>
																<script type="text/template"
																	id="tmpl-load-subcategories">
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
														<div class="col-md-9 col-sm-7 col-xs-9 tg-verticalmiddle">
															<div class="row">
																<fieldset>
																	<div class="tab-content tg-tab-content">
																		<div role="tabpanel" class="tab-pane active"
																			id="nephrologist">
																			<div class="row">
																			
																				<div
																					class="col-md-6 col-sm-12 col-xs-12 tg-verticalmiddle">
																				
																					<div class="form-group">
																						<span class="select"> <select
																							class="group subcats" name="dir_subcat">
																								<option value="all">Doctor&nbsp;Specialities</option>
																								<option value="cardiologist">Cardiologist</option>
																								<option value="colorectal-surgeon">Colorectal
																									surgeon</option>
																								<option value="dentist">Dentist</option>
																								<option value="dermatologist">Dermatologist</option>
																								<option value="dietician">Dietician</option>
																								<option value="eye-doctor">Eye Doctor</option>
																								<option value="eye-nose-ear-ent-specialist">Eye,
																									Nose, Ear (ENT) specialist</option>
																								<option value="nephrologist">Nephrologist</option>
																								<option value="neurosurgeon">Neurosurgeon</option>
																								<option value="nutritionist">Nutritionist</option>
																								<option value="oncologist">Oncologist</option>
																								<option value="ophthalmologist">Ophthalmologist</option>
																								<option value="orthodontist">Orthodontist</option>
																								<option value="orthopedic-surgeon">Orthopedic
																									Surgeon</option>
																								<option value="pediatrician">Pediatrician</option>
																								<option value="physiotherapist">Physiotherapist</option>
																								<option value="plastic-surgeon">Plastic
																									surgeon</option>
																								<option value="primary-care-doctor">Primary
																									care doctor</option>
																								<option value="psychiatrist">Psychiatrist</option>
																								<option value="psychologist">Psychologist</option>
																						</select>
																						</span>
																					</div>
																					<div class="form-group">
																						<input type="text" name="by_name"
																							class="form-control"
																							placeholder="Type Keyword...">
																					</div>
																					<div class="form-group">
																						<input type="text" name="zip" class="form-control"
																							placeholder="Search users by zip code">
																					</div>
																					<div class="form-group">
																					<input type="submit" class="btn btn-success" value="submit">
																					</div>
																					
																				</div>
																				
																				<div
																					class="col-md-6 col-sm-12 col-xs-12 tg-verticalmiddle">
																					<h1>
																						FIND YOUR<span>NEAREST</span> <em
																							class="current_directory"></em>
																					</h1>
																				</div>
																			</div>
																		</div>
																	</div>
																</fieldset>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="show-search">
										<i class="fa fa-search"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					 <script>
						$("form").attr(
								"action",
								"search.html?q="
										+ $(".active").attr("data-dir_name"));
						$(".current-directory").on(
								"click",
								function() {
									$("form").attr(
											"action",
											"search.html?q="
													+ $(".active").attr(
															"data-dir_name"));
								});
					</script> 
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default"
					style="padding-top: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-services">
								<div class="col-sm-10 col-sm-offset-1 col-xs-12">
									<div class="tg-theme-heading">
										<h2>WHAT TO EXPECT</h2>
										<span class="tg-roundbox"></span>
										<div class="tg-description">
											<p>In just three simple steps, DocDirect will help you
												find your nearest healthcare setting without having to
												signup. We aim to facilitate you in finding your right
												doctor with just three clicks without having to ask around
												or wander to find your nearest healthcare facility.</p>
										</div>
									</div>
								</div>

								<div class="tg-search-categories">
									<div class="row">
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor"><h3>find
																	your doctor</h3></a> <i class="icon-stethoscope"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital"><h3>NEAREST
																	HOSPITAL</h3></a> <i class="icon-healthcare"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy"><h3>NEAREST
																	PHARMACY</h3></a> <i class="icon-capsules"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>

				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="tg-theme-heading">
									<h2>Top Categories</h2>
									<span class="tg-roundbox"></span>
									<div class="tg-description">
										<p>In just three simple steps, DocDirect will help you
											find your nearest healthcare setting without having to
											signup. We aim to facilitate you in finding your right doctor
											with just three clicks without having to ask around or wander
											to find your nearest healthcare facility.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="sc-dir-types catagories-types">
								<div class="tg-findbycategorys">
									<div class="specialities-list">
										<ul>
											<li id="dir-127">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor">
															<label> <i class="icon-stethoscope"></i> Doctor<span
																class="count">13</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-126">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital">
															<label> <i
																class="icon-Hospitalmedicalsignalofacrossinacircle"></i>
																hospital<span class="count">7</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-125">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=clinic">
															<label> <i
																class="icon-Clinichistorymedicalpaperonclipboard"></i>
																clinic<span class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-123">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy">
															<label> <i class="icon-Pills"></i> Pharmacy<span
																class="count">8</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-122">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=blood-bank">
															<label> <i class="icon-BloodDonation"></i> Blood
																Bank<span class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-121">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=fitness-center">
															<label> <i class="icon-hairs"></i> Fitness Center<span
																class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section
					class="tg-main-section haslayout tg-areuadoctor stretch_section"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%"
					data-speed="0.5" data-bleed="0" data-appear-top-offset="600"
					data-parallax="scroll" data-position="center 0"
					data-image-src="http://themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/bgparallax-01.jpg">
					<div class="builder-items">
						<div
							class="col-xs-12 col-md-6 builder-column col-sm-12 col-lg-6  pull-right">

							<div class="sc-about-us tg-healthcareonthego">
								<div class="tg-contentbox tg-haslayout">
									<div class="tg-heading-border">
										<h2>ARE YOU A DOCTOR?</h2>

										<h3>REGISTER NOW AND REACH THOUSANDS OF PATIENTS</h3>
									</div>
									<div class="tg-description">
										<p>We know how much it takes to become a qualified doctor
											so we have taken away all your hassle to look out for your
											patients once you have qualified. DocDirect will give you an
											easy reach to all the patients, all you need is to sign up!</p>
									</div>

									<div class="tg-btns">
										<a class="tg-btn" href="#">signup now</a>
									</div>

								</div>
							</div>
						</div>
						<div
							class="col-xs-12 col-md-6 builder-column col-sm-12 col-lg-6  pull-left">

							<figure class="frame-img">
								<!-- <img
									src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/img-01.png"
									alt="Image Frame" /> -->
							</figure>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<!-- <section class="tg-main-section haslayout  default"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-6 builder-column ">

							<div class="sc-about-us tg-healthcareonthego">
								<div class="tg-contentbox tg-haslayout">
									<div class="tg-heading-border">
										<h2>HEALTHCARE ON THE GO</h2>
									</div>
									<div class="tg-description">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit, sed diam nonummy nibh euismod tincidunt ut laoreet
											dolore magna aliquam erat volutpat wisi enim ad minim veniam
											quis nostrud.</p>
									</div>

									<ul>
										<li>Claritas est etiam processus dynamicus, qui sequitur
											mutationem consuetudium lectorum.</li>
										<li>Mirum est notare quam littera gothica, quam nunc
											putamus parum claram, anteposuerit litterarum.</li>
										<li>Nam liber tempor cum soluta nobis eleifend option
											congue nihil imperdiet doming.</li>

									</ul>
									<div class="tg-btns">
										<a class="tg-btn" href="#">buy now</a> <a class="tg-btn"
											href="#">screenshots</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column col-lg-6  pull-left">

							<figure class="frame-img">
								<img
									src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/img-02.png"
									alt="Image Frame" />
							</figure>
						</div>
					</div>
				</section> -->
				<section class="tg-main-section haslayout  stretch_section"
					data-speed="0.5" data-bleed="0" data-appear-top-offset="600"
					data-parallax="scroll" data-position="center 0"
					data-image-src="http://themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/bgparallax-01.jpg">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-review">
								<div class="tg-patientfeedbacks tg-haslayout">
									<div class="col-sm-10 col-sm-offset-1 col-xs-12">
										<div class="tg-theme-heading">
											<h2>PATIENT FEEDBACK</h2>
											<span class="tg-roundbox"></span>

											<div class="tg-description">
												<p>We know how much it takes to become a qualified
													doctor so we have taken away all your hassle to look out
													for your patients once you have qualified. DocDirect will
													give you an easy reach to all the patients, all you need is
													to sign up!</p>
											</div>

										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6 tg-feedbackwidht">
										<div class="tg-patientfeedback">
											<figure class="tg-patient-pic">
												<a
													href="https://themographics.com/wordpress/docdirect/user/steve/"><img
													src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-01-1-150x150.jpg"
													alt="Reviewer"></a>
											</figure>
											<div class="tg-patient-message">
												<span class="tg-patient-name"><a
													href="https://themographics.com/wordpress/docdirect/user/steve/">Dr
														Steve</a></span> <span class="tg-doctor-name">For <a
													href="https://themographics.com/wordpress/docdirect/user/professional/">Demo
														Professional</a></span>
												<div class="tg-stars star-rating">
													<span style="width: 80%"></span>
												</div>
												<div class="tg-description">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua...</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6 tg-feedbackwidht">
										<div class="tg-patientfeedback">
											<figure class="tg-patient-pic">
												<a
													href="https://themographics.com/wordpress/docdirect/user/steve/"><img
													src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-01-1-150x150.jpg"
													alt="Reviewer"></a>
											</figure>
											<div class="tg-patient-message">
												<span class="tg-patient-name"><a
													href="https://themographics.com/wordpress/docdirect/user/steve/">Dr
														Steve</a></span> <span class="tg-doctor-name">For <a
													href="https://themographics.com/wordpress/docdirect/user/carol/">Dr.Carol</a></span>
												<div class="tg-stars star-rating">
													<span style="width: 100%"></span>
												</div>
												<div class="tg-description">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua...</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="tg-theme-heading">
									<h2>find healthcare by</h2>
									<span class="tg-roundbox"></span>
									<div class="tg-description">
										<p>In just three simple steps, DocDirect will help you
											find your nearest healthcare setting without having to
											signup. We aim to facilitate you in finding your right doctor
											with just three clicks without having to ask around or wander
											to find your nearest healthcare facility.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column ">
							<div class="sc-dir-search">
								<div class="tg-findbycategory">
									<div class="tg-box">
										<div class="tg-heading-border tg-small">
											<i class="icon-map"></i>
											<h3>Location</h3>
										</div>
										<ul>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aberdeen">Aberdeen</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aldershot">Aldershot</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=altrincham">Altrincham</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aylesbury">Aylesbury</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bamber">Bamber</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bangor">Bangor</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=batley">Batley</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bebingto">Bebingto</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bedford">Bedford</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=birmingham">Birmingham</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=blackpool">Blackpool</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=brentwood">Brentwood</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bristol">Bristol</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=cardiff">Cardiff</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=carlisle">Carlisle</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=crawley">Crawley</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=darlington">Darlington</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=eastleigh">Eastleigh</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=edinburg">Edinburg</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=esher">Esher</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=glasgow-sco">Glasgow
													SCO</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=guildford">Guildford</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=halesowen">Halesowen</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=halifax">Halifax</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=hamilton">Hamilton</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=leeds">Leeds</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column ">
							<div class="sc-dir-search sc-specialities">
								<div class="tg-findbycategory">
									<div class="tg-box">
										<div class="tg-heading-border tg-small">
											<i class="fa fa-medkit"></i>
											<h3>Speciality</h3>
										</div>
										<ul>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=aerobic-centers">Aerobic
													Centers</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=associazione-volontari-italiani-sangue">Associazione
													Volontari</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=athletic-clubs">Athletic
													Clubs</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=blood-services">Blood
													Services</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=blood-services-center-for-biologics-evaluation-and-research">Blood
													Services Center</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cancer-hospital">Cancer
													Hospital</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cardiologist">Cardiologist</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cardiology-clinic">Cardiology
													clinic</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=children-clinic">Children
													clinic</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=children-hospital">Children
													Hospital</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=clinical-pharmacy">Clinical
													pharmacy</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=colorectal-surgeon">Colorectal
													surgeon</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=community-blood-services">Community
													Blood Services</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=community-pharmacy">Community
													pharmacy</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=compliance-medicine">Compliance
													(medicine)</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cord-blood-registry">Cord
													Blood Registry</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=country-clubs">Country
													Clubs</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=dance-centers">Dance
													Centers</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- <section class="tg-main-section haslayout  stretch_section"
					style="background-image: url(https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/bgparallax-03.jpg); padding-top: 50px; padding-bottom: 50px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="tg-buynowbox">
								<h3 style="color: #5d5955">ONE OF THE VERY FEW USER BASE
									DIRECTORY THEMES AVAILABLE.</h3>
								<a class="tg-btn" style="color: #5d5955" href="#">Read more</a>
							</div>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;"> -->
				<!-- <div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-teams-grid">
								<div class="tg-team-members">
									<div class="col-sm-10 col-sm-offset-1 col-xs-12">
										<div class="tg-section-head">
											<div class="tg-theme-heading">
												<h2>TEAM BEHIND HEALTHANALITICS</h2>
												<span class="tg-roundbox"></span>
											</div>
											<div class="tg-description">
												<p>In just three simple steps, HealthAnalytics will help you
													find your nearest healthcare setting without having to
													signup. We aim to facilitate you in finding your right
													doctor with just three clicks without having to ask around
													or wander to find your nearest healthcare facility.</p>
											</div>
										</div>
									</div>
									<div class="tg-teams-member">
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-01.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														DAWSON DAWYNE<span>CEO &amp; FOUNDER</span>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-02.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														TIFANY RENY<span>FOUNDER</span>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-03-1.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>the
														
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														HECTOR ALLIE<span>CFO</span>
													</h2>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
			</div>
		</div>
	</div>
</div>
</main>


<jsp:include page="footer.jsp"></jsp:include>
