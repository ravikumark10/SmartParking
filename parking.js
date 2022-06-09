angular.module('smartparking',[])
.controller('parking',function($scope,$http){
    $scope._available=3;
    $http.get('/sensordata').then(function(data){
        $scope.distance=data.data.distance;
        
    })
    $http.get('https://api.thingspeak.com/channels/1759356/feeds.json?api_key=Q6DJDM156JDBGZRC&results=2').then(function(response){
        $scope.value=response.data.feeds[1];
        $scope.value1=response.data.feeds[0];
        
    })

})