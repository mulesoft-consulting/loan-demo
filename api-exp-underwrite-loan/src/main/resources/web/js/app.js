//host = window.location.host;
//base = host.startsWith("localhost") || host.startsWith("127.") ? "/" : "/";
client_keys='?client_id=ef64211782444af0b1b550d4cac70e51&client_secret=f1258f77795f4301A3708DCEEB994B20';

angular
		.module('myModule', [ 'ngSanitize' ])
		.controller(
				'FormController',
				function($scope, $http) {
					
					$scope.response = {};
					
//					$scope.applications = [
//					                       {
//					                    	    "loan_application_id": 1234,
//					                    	    "first_name": "Jim",
//					                    	    "last_name": "Doyle",
//					                    	    "loan_amount": 250000,
//					                    	    "combined_credit_score": 795,
//					                    	    "status": "pre-approved"
//					                    	  }
//					                    	];
					
					 $http.get('/api/application' + client_keys)
				       .then(function(res){
				    	   $scope.applications = res.data;                
				        });

					$scope.submit = function(id) {
						
						$http.post('/api/decision/' + id + client_keys, { })
					       .then(function(res){
					          $scope.response = res.data;  
					          $http.get('/api/application')
						       .then(function(res){
						    	   $scope.applications = res.data;                
						        });
					        });
					}

				});