<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <script>
        const msg = '<%= request.getAttribute("msg") %>';
		if(msg !== "null" && status !== "null"){
			$(document).ready(function(){
				alert(msg);
			})
		}
        </script>