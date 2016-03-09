//host = window.location.host;
//base = host.startsWith("localhost") || host.startsWith("127.") ? "/" : "/";

angular
		.module('myModule', [ 'schemaForm', 'ngSanitize' ])
		.controller(
				'FormController',
				function($scope, $http) {
					
					$scope.response = {};
					
					 $http.get('form/loan-application-example-in.json')
				       .then(function(res){
				          $scope.model = res.data.loan_app;                
				        });
					 $http.get('form/loan-application-schema.json')
				       .then(function(res){
				          $scope.schema = res.data.definitions.loan_app;                
				        });

					$scope.form = [ "loan_amount", "loan_purpose",
							"offerNumber", "first_name", "middle_initial",
							"last_name", "email_address", "birth_date", "ssn",

							{
								"key" : "addresses",
								"type" : "tabarray",
								"tabType" : "top",
								"add" : "New Address",
								"remove" : "Delete Address",
								"style" : {
									"remove" : "btn-danger"
								},
								"items" : [ "addresses[].isMailingOnly", "addresses[].address1", "addresses[].address2", "addresses[].city", "addresses[].state", "addresses[].zip", "addresses[].moveIn_date" ],
								"title": "{{value.nick || ('Address '+$index)}}"
							}, {
								"key" : "contact_numbers",
								"type" : "tabarray",
								"tabType" : "top",
								"add" : "New Contact",
								"remove" : "Delete Contact",
								"style" : {
									"remove" : "btn-danger"
								},
								"items" : [ "contact_numbers[].isPrimary", "contact_numbers[].phone_number", "contact_numbers[].type" ],
								"title": "{{value.nick || ('Contact '+$index)}}"
							}, "financial_information",

							{
								type : "button",
								title : "Save",
								onClick : "submit()"
							} ];
					
					$scope.submit = function() {
						
						$http.post('/api/application', { "loan_app" : $scope.model })
					       .then(function(res){
					          $scope.response = res.data;             
					        });
					}

				});