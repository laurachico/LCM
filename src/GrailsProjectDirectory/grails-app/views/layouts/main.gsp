<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="LCM Ltd."/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="${resource(dir: 'images', file: 'LCM_IronBow5_size2.png')}">
		<link sizes="114x114" href="${resource(dir: 'images', file: 'LCM_IronBow5_size2.png')}"> 
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'justified-nav.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'fonts')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
		
		<style>
			.highlight {
 
  			padding: 9px 14px;
  			margin-bottom: 14px;
  			background-color: #f7f7f9;
  			border: 1px solid #e1e1e8;
  			border-radius: 4px;
			}

		</style>
	</head>
	<body>

    <div class="container">

      <div class="masthead">
        
        <ul class="nav nav-justified">
          <li><a href="/GrailsProjectDirectory/">Home</a></li>
          <li><a href="/GrailsProjectDirectory/location">Location</a></li>
		  <li><a href="/GrailsProjectDirectory/company">Company</a></li>
		  <li><a href="/GrailsProjectDirectory/report/create">Upload a report</a></li>
          <li><a href="/GrailsProjectDirectory/report/list">Uploaded reports</a></li>
          <sec:ifLoggedIn>
          <li><g:link controller='logout'>Logout</g:link></li>
          <br>Logged in as  <strong><sec:loggedInUserInfo field="username"/></strong>
          </sec:ifLoggedIn>
          <sec:ifNotLoggedIn>
          <li><g:link controller='login'>Login</g:link></li>
          </sec:ifNotLoggedIn>
        </ul>
        <br>

      </div>

      <!-- Jumbotron -->
      <div class="jumbotron">
		<img src="${resource(dir: 'images', file: 'LCM_IronBow5_size2.png')}" alt="LCM"/>
      </div>

      <g:layoutBody/>

      <!-- Site footer -->
      <div class="footer">
        <p>LCM Ltd. Company</p>
      </div>

    </div> <!-- /container -->

	<g:javascript library="application"/>
	<r:layoutResources />
	
	</body>
</html>