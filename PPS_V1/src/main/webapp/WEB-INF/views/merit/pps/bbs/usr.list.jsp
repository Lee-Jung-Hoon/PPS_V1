<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>앵귤러js 3일</title>
</head>
<script>
	var mainApp = angular.module("mainApp", []);
	mainApp.controller('menuController', function($scope) {
		$scope.menu = {
			menuName:"짜장면",
			price:"5000",
			
			menuList:function() {
				var menuObject; // 메뉴 오브젝트
				menuObject = $scope.menu;
				return menuObject.menuName + " " + menuObject.price + "원";
			}
		};
	});
</script>
<body>
	<h1>Angularjs 연습중</h1>
	<div ng-app="mainApp" ng-controller="menuController">
		메뉴이름: <input type="text" ng-model="menu.menuName"><br><br>
		가격: <input type="text" ng-model="menu.price"><br><br>
		
		현재 입력한 값 : {{menu.menuList()}}		
	</div>
</body>
</html>