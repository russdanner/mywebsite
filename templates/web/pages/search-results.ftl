<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>${contentModel.title}</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="/static-assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="/static-assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/static-assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="/static-assets/css/jquery-ui.min.css" />
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<@renderComponent component=contentModel.header.item />

							<!-- Section -->
								<section>
									<header class="main">
										<h1>Search Results</h1>
										<h3>Refine by</h3>
									</header>
                  <form id="categories">
                  	<div class="row uniform">
											<div class="3u 6u(medium) 12u$(small)">
												<input type="checkbox" id="bitcoin" name="bitcoin" value="bitcoin">
												<label for="style">Bitcoin</label>
											</div>
											<div class="3u 6u$(medium) 12u$(small)">
												<input type="checkbox" id="ethereum" name="ethereum" value="ethereum">
												<label for="health">Ethereum</label>
											</div>
											<div class="3u 6u(medium) 12u$(small)">
												<input type="checkbox" id="blockchain" name="blockchain" value="blockchain">
												<label for="entertainment">Blockchain</label>
											</div>
											<div class="3u 6u$(medium) 12u$(small)">
												<input type="checkbox" id="investing" name="investing" value="investing">
												<label for="technology">Investing</label>
											</div>
										</div>
                  </form>
									<hr class="major"/>
									<div id="search-results">
									</div>
								</section>

						</div>
					</div>

					<!-- Left Rail -->
					<@renderComponent component=contentModel.left\-rail.item />

			</div>

			<!-- Handlebar Templates -->
			<script id="search-results-template" type="text/x-handlebars-template">
				{{#each results}}
				<div>
					<h4><a href="{{url}}">{{title}}</a></h4>
					{{#if highlight}}
					<p>{{{highlight}}}</p>
					{{/if}}
				</div>
				{{else}}
				<p>No results found</p>
				{{/each}}
			</script>

		<!-- Scripts -->
			<script src="/static-assets/js/jquery.min.js"></script>
			<script src="/static-assets/js/jquery-ui.min.js"></script>
			<script src="/static-assets/js/skel.min.js"></script>
			<script src="/static-assets/js/handlebars.min-latest.js"></script>
			<script src="/static-assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="/static-assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/static-assets/js/main.js"></script>
			<script src="/static-assets/js/search.js"></script>

		<@studio.toolSupport/>
	</body>
</html>
