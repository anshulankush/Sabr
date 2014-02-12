<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!-- <!doctype html> -->
<html lang="us">
<head>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SABR</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="js/jquery.mobile-1.3.2.css" />
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.mobile-1.3.2.js"></script>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="js/ui/jquery.ui.map.js"></script>
<style type="text/css">
.ui-page.ui-body-c {
	background: url(sabrImages/TEST.jpg);
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	background-size: 100% 100%;
}
</style>
</head>
<body>
	<div data-role="page">
		<div data-role="header">
			<h1>${cityBean.secondPageHeader}</h1>
		</div>
		<!-- /header -->
		<br />
		<form name="completeDropdown" action="completeDropdown" method="post">
			<div data-role="listview">
				<table style="width: 100%; height: 100%">
					<tr>
						<td><input type="hidden" value="${teamBean.team}"
							style="display: none" name="teamBean.team" /> <input
							type="hidden" value="${cityBean.selectedCity }"
							style="display: none" name="cityBean.selectedCity" /></td>
					</tr>
					<tr>
						<td align="center"><label for="cityBean" class="select"
							style="text-align: center; color: white;">Venue Details</label></td>
					</tr>
					<tr>
						<td><img
							src="http://maps.googleapis.com/maps/api/staticmap?center=${venueBean.latitude},${venueBean.longitude}&zoom=15&size=300x300&markers=color:red%7Clabel:A%7C${venueBean.longitude},${venueBean.latitude}&maptype=roadmap18&sensor=false">
							<%-- <div data-role="page" id="map-page" data-url="map-page">
								<div data-role="header">
									<h1>Maps</h1>
								</div>
								<div data-role="content" id="map-canvas">
									<!-- map loads here... -->
									$('#map_canvas').gmap('addMarker', {'position':
									'${venueBean.latitude},${venueBean.longitude}}', 'bounds': true}).click(function() {
									$('#map_canvas').gmap('openInfoWindow', {'content': 'Hello
									World!'}, this); });
								</div>
							</div> --%></td>
					</tr>
					<tr>
						<td align="left" style="color: white;font: bolder;"><Strong><b>${venueBean.name}</b></Strong></td>
					</tr>
					<tr>
						<td align="left" style="color: white;font: bold;"><small><b>${venueBean.address}</b></small></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><small><b>${venueBean.phone}</b></small></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><small>
								${venueBean.description}</small></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><small>Team:
								${venueBean.mlb_team}</small></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><a
							href="${venueBean.web}">Website</a></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><img
							src="${venueBean.image}"></td>
					</tr>
					<%-- <tr>
						<td align="left" style="color: white;"><small>Tags:
								${venueBean.tags}</small></td>
					</tr>
					<tr>
						<td align="left" style="color: white;"><small>Slug:
								${venueBean.slug}</small></td>
					</tr> --%>
				</table>
			</div>
		</form>
	</div>
	<!-- /page -->
</body>
</html>