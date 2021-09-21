'use strict';

app.factory('HomeFactory', function($http){

	var url = 'http://localhost:8080';

	var HomeFactory = {

		getDiscounts: function(){
			return $http.get(url+"/discount/discounts").success(function(data){
				return data;
			})
			.error(function(err){
				console.log(err);
			})
		},
        getCountries: function(){
			return $http.get(url+"/country/countries").success(function(data){
				return data;
			})
			.error(function(err){
				console.log(err);
			})
		},
        getCustomers: function(){
			return $http.get(url+"/customer/customers").success(function(data){
				return data;
			})
			.error(function(err){
				console.log(err);
			})
		},
        getRegions: function(){
			return $http.get(url+"/region/regions").success(function(data){
				return data;
			})
			.error(function(err){
				console.log(err);
			})
		}


	};

	return HomeFactory

});