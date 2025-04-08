<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta charset="UTF-8" />
	<title>원더랜드</title>
	<script src="https://cdn.tailwindcss.com"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<style>
		body {
			font-family: 'Noto Sans KR', sans-serif;
		}
	</style>
</head>

<body class="bg-white"> 
	<!-- Header -->
	<div class="max-w-screen-xl mx-auto px-6">
		<div class="flex items-center justify-between py-4">

			<div class="flex items-center space-x-2">
				<img src="/images/Logo_ver1.3.png" alt="원더랜드 로고" class="w-8 h-8 rounded-full" />
				<a href="#">
					<span class="text-lg font-bold text-[#3b82f6]">원더랜드</span>
				</a>
			</div>

			<div class="space-x-4 text-sm">
				<a href="#" class="text-gray-800">회원가입</a> <a href="#" class="text-gray-800">로그인</a>
			</div>

		</div>
	</div>
	
	<!-- Banner -->
	<div class="w-full h-[200px] bg-[#b3ddff] flex items-center justify-center text-white text-[96px] font-bold">
		광고판
	</div>

	<!-- Category Menu -->
	<div class="border-b border-gray-200">
		<div class="max-w-screen-xl mx-auto px-6 flex flex-wrap items-center justify-center gap-6 py-6">
			<c:forEach var="category" items="${fn:split('판타지,마법,동물,요정,로봇,미래,과거,가족,일상,모험,교훈,자연', ',')}">
				<div class="text-center">
					<i class="fas fa-star text-xl mb-1"></i>
					<div class="text-sm">${category}</div>
				</div>
			</c:forEach>
			<div>
				<button class="flex items-center border border-gray-400 px-2 py-1 text-sm rounded">
					<i class="fas fa-sliders-h mr-1"></i> 필터
				</button>
			</div>
		</div>
	</div>

	<!-- Book Grid -->
	<div class="max-w-screen-xl mx-auto px-6 py-8 grid grid-cols-4 gap-6">
		<!-- 반복될 카드 하나 예시 -->
		<div>
			<img src="https://placehold.co/300x300" alt="책 표지" class="rounded mb-2" />
			<div class="flex justify-between items-center">
				<div class="text-sm text-gray-800">제목이 들어갈 자리</div>
				<div class="text-xs text-gray-600"><i class="fas fa-star mr-1"></i>좋아요 수가 표시될 자리</div>
			</div>
			<div class="text-xs text-gray-600">작가이름이 들어갈 자리</div>
		</div>
	</div>
</body>

</html>