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
<title>Sabr Homepage</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="js/jquery.mobile-1.3.2.css" />
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.mobile-1.3.2.js"></script>

<script type="text/javascript">
	/* $('#cityDropdownInput :input').not(':submit')
	 .clone().hide().appendTo('#teamDropdownInput');
	 document.getElementById("teamDropdownINput").submit(); */
</script>

<%--
$("#cityDropdown").change(
        function(){
        $("#result").html('Retrieving ...');
        var selCase = $("#cityDropdown").val();
        $.ajax({
            type: "POST",
            url: "TeamDropdown",
            data: {selCaseDropDown: selCase},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function(msg) {
                $("#teamDropdown").get(0).options.length = 0;
                $("#teamDropdown").get(0).options[0] = new Option("Term Codes", "-1");   

                $.each(msg.d, function(index, item) {
                    $("#teamDropdown").get(0).options[$("#teamDropdown").get(0).options.length] = new Option(item.value, item.key);
                });
            },
            error: function() {
                alert("Failed to load teams");
                $("#result").hide();
            }
        });
    });


</script>
 --%>
<style type="text/css">
</style>
</head>
<body>
	<div data-role="page">
		<div data-role="header">
			<h1>Sabr Homepage</h1>
		</div>
		<!-- /header -->
		<br />
		<form name="cityDropdownInput" action="TeamDropdown">
			<div data-role="fieldcontain">
				<label for="cityBean" class="select">Choose a MLB City</label> <select
					name="cityBean.selectedCity" id="cityDropdown"
					onchange="this.form.submit()">
					<option>${cityBean.selectedCity}</option>
					<s:iterator value="cityArrayString">
						<option value="<s:property />"
							${cityBean.selectedCity == 'selectedCit' ? 'selected="selected"' : ''}><s:property /></option>
					</s:iterator>
				</select>
			</div>
		</form>
		<br />
		<form name="teamDropdownInput" action="SecondPage">
			<input value="${cityBean.selectedCity}" style="display: none"
				name="cityBean.selectedCity"></input>
			<div data-role="fieldcontain">
				<label for="teamBean" class="select">Choose a MLB Team</label> <select
					name="teamBean.team" id="teamDropdown">
					<option></option>
					<s:iterator value="teamArrayString">
						<option value="<s:property />"><s:property /></option>
					</s:iterator>
				</select>


			</div>
			<br /> <input type="submit" id="SecondPageSubmitButton"
				value="Submit" style="width: 50%">
		</form>

	</div>
	<!-- /page -->
</body>
</html>