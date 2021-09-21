'use strict';

app.controller('SignupController', function(HomeFactory){
	var vm = this;

	vm.user = {};

	vm.createUser = function(user){
		console.log(user);
		HomeFactory.createUser(user).then(function(data){
			console.log(data.data);
		});
	}

})