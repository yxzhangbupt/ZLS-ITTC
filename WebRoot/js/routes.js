/**
 * Defines the main routes in the application.
 * The routes you see here will be anchors '#/' unless specifically configured otherwise.
 */
define(['./app'], function (app) {
    'use strict';
    return app.config(function ($stateProvider, $urlRouterProvider) {
        $urlRouterProvider.otherwise('/login');
        $stateProvider
            .state('login', {
                url: '/login',
                templateUrl: 'partials/login.html',
                controller: 'loginCtrl'
            })
            .state('show_ground', {
                url: '/show_ground',
                views: {
                    '': {
                        templateUrl: 'partials/show_ground.html',
                        controller: 'showGroundCtrl'
                    },
                    'top@show_ground': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@show_ground': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
            .state('show_dynamic', {
                url: '/show_dynamic',
                views: {
                    '': {
                        templateUrl: 'partials/show_dynamic.html',
                        controller: 'showDynamicCtrl'
                    },
                    'top@show_dynamic': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@show_dynamic': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
            .state('ZP_new', {
                url: '/ZP_new',
                views: {
                    '': {
                        templateUrl: 'partials/ZP_new.html',
                        controller: 'ZPNewCtrl'
                    },
                    'top@ZP_new': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@ZP_new': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
            .state('ZP_old', {
                url: '/ZP_old',
                views: {
                    '': {
                        templateUrl: 'partials/ZP_old.html',
                        controller: 'ZPOldCtrl'
                    },
                    'top@ZP_old': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@ZP_old': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
            .state('single_qs',{
                url:'/single_qs',
                views:{
                    '':{
                        templateUrl:'partials/single.html',
                        controller:'showQsCtrl'
                    },
                    'top@single_qs': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@single_qs': {
                        templateUrl: 'partials/down.html'
                    }
                }

            })
            .state('single_jjc',{
                url:'/single_jjc',
                views:{
                    '':{
                        templateUrl:'partials/single.html',
                        controller:'showJjcCtrl'
                    },
                    'top@single_jjc': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@single_jjc': {
                        templateUrl: 'partials/down.html'
                    }
                }

            })
            .state('single_vl',{
                url:'/single_vl',
                views:{
                    '':{
                        templateUrl:'partials/single.html',
                        controller:'showVlCtrl'
                    },
                    'top@single_vl': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@single_vl': {
                        templateUrl: 'partials/down.html'
                    }
                }

            })
            .state('poolAnalysis',{
                url:'/poolAnalysis',
                views:{
                    '':{
                        templateUrl:'partials/poolAnalysis.html',
                        controller:'poolAnalysisCtrl'
                    },
                    'top@poolAnalysis': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@poolAnalysis': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
            .state('dataAnalysis',{
                url:'/dataAnalysis',
                views:{
                    '':{
                        templateUrl:'partials/dataAnalysis.html',
                        controller:'dataAnalysisCtrl'
                    },
                    'top@dataAnalysis': {
                        templateUrl: 'partials/top.html'
                    },
                    'down@dataAnalysis': {
                        templateUrl: 'partials/down.html'
                    }
                }
            })
        ;
    })
});