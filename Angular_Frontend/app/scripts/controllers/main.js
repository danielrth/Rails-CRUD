'use strict';

/**
 * @ngdoc function
 * @name kulturTripApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the kulturTripApp
 */
angular.module('kulturTripApp').controller('MainCtrl', ['$scope', '$http', function ($scope, $http) {

	$scope.inputTitle = 'HHH';
	$scope.inputAddress = 'TTTTTT';

    $http.get('http://192.168.0.112:3000/api/trips.json', {cache:false})
        .then(function(response){
            $scope.fstVal = response.data.trips;
            console.log($scope.fstVal);
        })
        .catch(function (e){
        	alert ('Error occurred');
        })

    $scope.submitNewTrip = function() {
    	$http.post('http://192.168.0.112:3000/api/trips.json', {
    		title: this.inputTitle,
    		address: this.inputAddress,
    	})
    	.then(function(res){
    		var newTrip = {'title': res.data.trip.title, 'address': res.data.trip.address};
    		$scope.fstVal.push(newTrip);
    	});
    };
}]);
