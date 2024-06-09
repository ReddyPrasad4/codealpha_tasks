<html>
<head>
<title>Count-Of-Words</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

body ,form{
	height: 100vh;
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
}

#mainContainer {
	height: 600px;
	width: 700px;
	background-color: orange;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
	border-radius: 20px;
	box-shadow: 2px 2px 5px black;
}

#area {
	height: 50%;
	width: 80%;
	border-radius: 20px;
	padding: 20px;
	font-size: 20px;
	border: none;
	outline: none;
	box-shadow: 2px 2px 5px black, -2px 2px 5px black;
}

#submitButton {
	height: 8%;
	width: 25%;
	font-size: 20px;
	font-weight: bold;
	border-radius: 5px;
	border: none;
	outline: none;
	background-color: red;
	box-shadow: 2px 2px 5px black;
}

h3 {
	text-align: center;
}

.containers {
	height: 30px;
	width: 80px;
	font-size: 20px;
	text-align: center;
	font-weight: bold;
}
</style>
</head>
<body>
	<form action="countWords">
		<h1>Words Counter</h1>
		<div id="mainContainer">
		<%
			String paragraph = "";
			int countOfWords = 0;
			int countOfCharacters = 0;
			if(request.getAttribute("paragraph")!=null && request.getAttribute("countOfWords")!=null && request.getAttribute("countOfCharacters")!=null)
			{
				paragraph = (String) request.getAttribute("paragraph");
				countOfWords = (int) request.getAttribute("countOfWords");
				countOfCharacters = (int)request.getAttribute("countOfCharacters");
			}
		%>
		
		
			<textarea name="paragraphData" id="area" placeholder="Enter your Paragraph here"><%= paragraph %></textarea>
			<input id="submitButton" type="submit" value="Count">
			<h3>
				Count-of-Characters : <input class="containers" type="text" disabled value=<%= countOfCharacters %>>
			</h3>
			<h3>
				Count-of-words : <input class="containers" type="text" disabled value= <%= countOfWords %>>
			</h3>

		</div>
	</form>
</body>