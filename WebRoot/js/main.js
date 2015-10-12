/**
 * configure RequireJS
 * prefer named modules to long paths, especially for version mgt
 * or 3rd party libraries
 */
require.config({

    paths: {
        'domReady': '../lib/requirejs-domready/domReady',
        'jquery':'../lib/jquery.min',
        'easyui':'../lib/easyui/jquery.easyui.min',
        'easyui-zh':'../lib/easyui/locale/easyui-lang-zh_CN',
        'angular': '../lib/angular/angular',
        "uiRouter": "../lib/angular/angular-ui-router",
        'oCanvas':"../lib/ocanvas-2.7.4",
        'myoCanvas':'../lib/my_oCanvas'
    },

    /**
     * for libs that either do not support AMD out of the box, or
     * require some fine tuning to dependency mgt'
     */
    shim: {
        'easyui':{
            deps:['jquery'],
            exports:'easyui'
        },
        'easyui-zh':{
            deps:['jquery'],
            exports:'easyui-zh'
        },
        'angular': {
            deps:['jquery'],
            exports: 'angular'
        },
        'oCanvas':{
          exports:'oCanvas'
        },
        'myoCanvas':{
            deps:['oCanvas'],
            exports:'myoCanvas'
        },
        'uiRouter':{
            deps: ['angular']
        }
    },
    
    deps: [
        // kick start application... see bootstrap.js
        './bootstrap'
    ]
});
