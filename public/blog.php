
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
      "http://www.w3.org/TR/html4/strict.dtd">

  	<?php
		// blog page
		$ch = curl_init("https://api.dropinblog.com/v1/html/?b=CPIGMKQ9OC689JO1JZ0X&c=".$_GET['c']."&p=".$_GET['p']."&page=".$_GET['page']);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($ch);
		curl_close($ch);
		$dib = json_decode($response);
	?>
  
<html prefix="og: http://ogp.me/ns#">
	<head profile="http://www.w3.org/TR/html4/strict.dtd">
		<!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-109210388-1"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

         gtag('config', 'UA-109210388-1');
        </script>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="Description" content="TRU Colors Brewing is a startup in Wilmington, North Carolina that is geared to change the community.">
		<meta name="Keywords" content="tru, true, colors, brewing, brewery, startup, wilmington, north carolina, gangs, gang, beer, company, co, tru colors">
		<meta property="og:title" content="TRU Colors Brewing Co." />
		<meta property="og:description" content="TRU Colors Brewing is a startup in Wilmington, North Carolina that is geared to change the community." />
		<meta property="og:url" content="https://www.trucolors.co" />
		<meta property="og:image" content="http://www.trucolors.co/images/tru_colors_logo_200x200_min.png" />
		<meta property="og:type" content="image/png" />	
		<link rel="icon" type="image/png" href="images/favicon_32x32.png">
		<title>TRU Colors Brewing Co.</title>
    	<link rel="stylesheet" href="css/style.css" type="text/css">
    	<link rel="stylesheet" href="css/responsive.css" type="text/css">
    </head>
    <body>

    	<?php echo $dib->data->content ?>

	</body>
</html>