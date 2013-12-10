<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>


<!-- <!doctype html> -->
<html lang="us">
<head>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sabr</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="js/jquery.mobile-1.3.2.css" />
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.mobile-1.3.2.js"></script>


<style type="text/css">
</style>
</head>
<body>
	<div data-role="page">
		<div data-role="header">
			<h1>${cityBean.selectedCity}</h1>
		</div>
		<!-- /header -->
		<br />
		<form name="attractionInput" action="ThirdPage">
			<div data-role="fieldcontain">
				<input value=${teamBean.team } style="display:none" name="teamBean.team"></input>
				<input value="${cityBean.selectedCity }" style="display:none"
					name="cityBean.selectedCity"></input> <input value="attraction"
					style="display: none" name="venueBean.venueType"></input> <input
					value="${teamBean.team}" style="display: none" name="teamBean.team"></input>
				<input value="${cityBean.selectedCity }" style="display: none"
					name="cityBean.selectedCity"></input> <input type="submit"
					id="AttractionButton" value="Attractions / Museums">
			</div>
		</form>
		<br />

		<form name="barInput" action="ThirdPage">
			<div data-role="fieldcontain">

				<input value="bar" style="display: none" name="venueBean.venueType"></input>
				<input value="${teamBean.team}" style="display: none"
					name="teamBean.team"></input> <input
					value="${cityBean.selectedCity }" style="display: none"
					name="cityBean.selectedCity"></input> <input type="submit"
					id="ResturantButton" value="Bars / Resturants">
		</form>
		<br />
		<form name="ballparkInput" action="ThirdPage">
			<div data-role="fieldcontain">

				<input value="ballpark" style="display: none"
					name="venueBean.venueType"></input> <input value="${teamBean.team}"
					style="display: none" name="teamBean.team"></input> <input
					value="${cityBean.selectedCity }" style="display: none"
					name="cityBean.selectedCity"></input> <input type="submit"
					id="BallparkButton" value="Ballparks">
		</form>
		<br />
		<form name="libraryInput" action="ThirdPage">
			<div data-role="fieldcontain">

				<input value="library" style="display: none"
					name="venueBean.venueType"></input> <input value="${teamBean.team}"
					style="display: none" name="teamBean.team"></input> <input
					value="${cityBean.selectedCity }" style="display: none"
					name="cityBean.selectedCity"></input> <input type="submit"
					id="LibraryButton" value="Libraries / Research">
		</form>

	</div>
	<!-- /page -->
</body>
</html>