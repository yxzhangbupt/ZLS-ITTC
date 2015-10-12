/**
 * Created by Administrator on 2015/9/25.
 */
define(['./module'], function (controllers) {
    'use strict';
    controllers.controller('loginCtrl', ['$scope',"$http",'$state',function ($scope,$http,$state) {
        $scope.username="";
        $scope.password="";
        $scope.servers= [
            {id: '1', name: '门头沟分公司水厂'},
            {id: '2', name: '长辛店分公司水厂'},
            {id: '3', name: '南口分公司水厂'},
            {id: '4', name: '怀柔分公司水厂'}
        ];
        $scope.server={id: '1', name: '门头沟分公司水厂'};
        $scope.login=function(){
            //$http.post('login.jsp', { name: $scope.username, pwd:$scope.password}).
            //    then(function(response) {
            //        // this callback will be called asynchronously
            //        // when the response is available
            //        var data=eval('('+da+')');
            //        if(data.status=="Success"){
            //            window.location.href="CP_show.jsp";
            //        }
            //        else{
            //            alert("登录名或者密码不正确，请重新输入！")
            //        }
            //    }, function(response) {
            //        // called asynchronously if an error occurs
            //        // or server returns response with an error status.
            //    });
            $state.go('show_ground');
        }
    }]);
});
