/**
 * Created by Administrator on 2015/10/19.
 */
define(['./module', 'oCanvas', 'myoCanvas'], function (controllers, oCanvas) {
    'use strict';
    controllers.controller('showHxtCtrl', ['$scope', '$stateParams', function ($scope, $statePrams) {
        $scope.waterStatus="进水中";
        $scope.waterHeight="正常";
        $scope.waterWarn="暂无";
        $scope.speed = ["很慢", "稍慢", "正常", "稍快", "很快"];
        $scope.num = 2;
        $scope.waterSpeed = $scope.speed[$scope.num];
        var width_all=30,
            speed_SC=0.9,
            color_GD="#007fff",
            color_SC="#43d9f9";
        var canvas = oCanvas.create({
            canvas: "#canvas_single",
            background: "#ccc",
            fps: 50
        });
//绘制两个水池
        var SC01=createSC({
            parent:canvas,
            x:512,y:538,height:120,width:39,trail_flag:0,speed:speed_SC,color:color_SC
        });
        var SC02=createSC({
            parent:canvas,
            x:570,y:413,height:246,width:418,trail_flag:0,speed:speed_SC,color:color_SC
        });
//添加背景图片
        var bg = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/hxt.png"
        }).add();
//添加箭头
        var arrow_1=canvas.display.sprite({
            x: 1012,
            y: 400,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).scale(1.5,1.1).add();
        var arrow_2=canvas.display.sprite({
            x: 632,
            y: 457,
            image: "image/water-arrow/up.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_3=canvas.display.sprite({
            x: 724,
            y: 457,
            image: "image/water-arrow/up.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_4=canvas.display.sprite({
            x: 816,
            y: 457,
            image: "image/water-arrow/up.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_5=canvas.display.sprite({
            x: 908,
            y: 457,
            image: "image/water-arrow/up.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
//绘制两条管道
        var GD01=createGD({
            parent:canvas,
            cells:[
                {x_cell: 388,y_cell: 621},
                {x_cell: 419, y_cell: 621}
            ],
            GDwidth:width_all,
            color:color_GD
        });
        var GD02=createGD({
            parent:canvas,
            cells:[
                {x_cell: 477,y_cell: 621},
                {x_cell: 512, y_cell: 621}
            ],
            GDwidth:width_all,
            color:color_GD
        });
        var GD03=createGD({
            parent:canvas,
            cells:[
                {x_cell: 550,y_cell: 648},
                {x_cell: 583, y_cell: 648}
            ],
            GDwidth:width_all,
            color:color_GD
        });
        var GD04=createGD({
            parent:canvas,
            cells:[
                {x_cell: 572,y_cell: 408},
                {x_cell: 1006, y_cell: 408}
            ],
            GDwidth:width_all,
            color:color_GD
        });
        var GD05=createGD({
            parent:canvas,
            cells:[
                {x_cell: 1034,y_cell: 458},
                {x_cell: 1034,y_cell: 567},
                {x_cell: 1068,y_cell: 597},
                {x_cell: 1146,y_cell: 597}
            ],
            GDwidth:width_all,
            color:color_GD
        });

//添加文字标注
        var txt1=canvas.display.text({
            x:700,
            y:30,
            origin: { x:"center", y: "top" },
            font: "bold 32px sans-serif",
            fill:"#337ab7",
            text:"臭氧池工艺展示纵剖图"
        }).add();
        var txt2=canvas.display.text({
            x:110,
            y:425,
            origin: { x:"center", y: "top" },
            font: "bold 25px sans-serif",
            fill:"#337ab7",
            text:"滤池来水"
        }).add();
        var txt3=canvas.display.text({
            x:1250,
            y:505,
            origin: { x:"center", y: "top" },
            font: "bold 25px sans-serif",
            fill:"#337ab7",
            text:"臭氧池出水"
        }).add();
//设置循环
        canvas.setLoop(function () {
            GD01.advance();
            GD02.advance();
            GD03.advance();
            GD04.advance();
            GD05.advance();
            SC01.advance();
            SC02.advance();
            if(GD01.full==1){
                GD02.paused=1;
                GD01.full=0;
            }
            if(GD02.full==1){
                SC01.start=1;
                GD02.full=0;
            }
            if(SC01.full==1){
                GD03.paused=1;
                SC01.full=0;
            }
            if(GD03.full==1){
                SC02.start=1;
                arrow_2.start();
                arrow_3.start();
                arrow_4.start();
                arrow_5.start();
                GD03.full=0;
            }
            if(SC02.full==1){
                GD04.paused=1;
                SC02.full=0;
            }
            if(GD04.full==1){
                GD05.paused=1;
                arrow_1.start();
                GD04.full=0;
            }
            if(GD05.full==1){
                arrow_2.stopAnimation();
                arrow_3.stopAnimation();
                arrow_4.stopAnimation();
                arrow_5.stopAnimation();
                arrow_3.frame=2;
                arrow_4.frame=2;
                arrow_5.frame=2;
                arrow_2.frame=2;
                GD05.full=0;
            }
            canvas.redraw();
        }).start();
//添加按钮函数
        $scope.start=function(){
            if(this.value==1){
                this.innerText='开始演示';
                this.value=0;
                canvas.timeline.stop();
            }
            else{
                GD01.paused=1;

                canvas.redraw();
                this.innerText='暂停演示';
                this.value=1;
                canvas.timeline.start();
            }
        };
        $scope.speedUp = function () {
            if ($scope.num < 4) {
                $scope.num++;
                $scope.waterSpeed = $scope.speed[$scope.num];
                canvas.settings.fps += 10;
                $scope.waterWarn = "暂无";
            }
            else {
                $scope.waterWarn = "速度已最快"
            }
            canvas.redraw();
            canvas.timeline.stop();
            canvas.timeline.start();
        };
        $scope.speedDown = function () {
            if ($scope.num > 0) {
                $scope.num--;
                $scope.waterSpeed = $scope.speed[$scope.num];
                canvas.settings.fps -= 10;
                $scope.waterWarn = "暂无";
            }
            else {
                $scope.waterWarn = "速度已最慢";
            }
            canvas.redraw();
            canvas.timeline.stop();
            canvas.timeline.start();
        };
        $scope.restart= function () {
            function reset(){

            }
            reset();

        }
    }]);
});