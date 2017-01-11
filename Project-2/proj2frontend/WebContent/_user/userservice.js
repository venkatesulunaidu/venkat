app.factory('UserService',function($http){
	console.log('Entering user service for connecting backend')
	var userService=this;
	var BASE_URL="http://localhost:8085/proj2backend"
	userService.authenticate=function(user){
		return $http.post(BASE_URL + "/login",user);
	};
	userService.registerUser=function(user){
		return $http.post(BASE_URL + "/register",user) 
	};
	userService.logout=function(){
		console.log('entering logout service')
		return $http.put(BASE_URL + "/logout")
	};
	userService.getAllUsers=function(){
		console.log('entering getallusers in user service')
		return $http.get(BASE_URL +"/getUsers")
	}
	
	userService.friendRequest=function(username){
		console.log('service --- friendRequest');
		return $http.post(BASE_URL+ '/friendRequest',username);
	}
	
	return userService;
})