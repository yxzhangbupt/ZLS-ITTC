/**
 * Created by Administrator on 2015/9/28.
 */
define(['./module', 'oCanvas', 'myoCanvas'], function (controllers, oCanvas) {
    'use strict';
    controllers.controller('showVlCtrl', ['$scope', '$stateParams', function ($scope, $statePrams) {
        $scope.waterStatus="进水中";
        $scope.waterHeight="正常";
        $scope.waterWarn="暂无";
        $scope.speed = ["很慢", "稍慢", "正常", "稍快", "很快"];
        $scope.num = 2;
        $scope.waterSpeed = $scope.speed[$scope.num];
        var canvas = oCanvas.create({
            canvas: "#canvas_single",
            background: "#eeeeef",
            fps: 50
        });
        var bg = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/vl.png"
        });
        canvas.addChild(bg);
        var speed_all=1.5,
            width_all=20,
            speed_SC=0.9,
            color_GD="#007fff",
            color_SC="#43d9f9";
        var SC01 = canvas.display.SC_show({
            x: 145,
            y: 207,
            Width: 125,
            Height: 61,
            height_now: 0,
            trail_flag: 0,
            t: 7540,
            speed:speed_SC,
            fill: color_SC,
            full:0,
            start:1
        });
        canvas.addChild(SC01);

        var SC02 = canvas.display.SC_show({
            x: 270,
            y: 207,
            Width: 39,
            Height: 61,
            height_now: 0,
            trail_flag: 0,
            t: 7540,
            speed:speed_SC,
            fill: color_SC,
            full:0,
            start:0
        });
        canvas.addChild(SC02);

        var SC03 = canvas.display.SC_show_down({
            x: 359,
            y: 265,
            Width: 509,
            Height: 230,
            height_now: 0,
            trail_flag: 0,
            t: 7540,
            speed:speed_SC,
            fill:color_SC,
            full:0,
            start:0
        });
        canvas.addChild(SC03);

        var fg = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/vl.png"
        });
        canvas.addChild(fg);
        var arrow_1=canvas.display.sprite({
            x: 475-160,
            y: 450-243,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();

        var arrow_2=canvas.display.sprite({
            x: 475-167+23,
            y: 450-246+37,
            image: "image/water-arrow/right.png",
            generate:false,
            frames: [
                {x:60,y:0,w:60,h:40,d:400},
                {x:0,y:0,w:60,h:40,d:800}
            ]
        }).add();

        var arrow_3=canvas.display.sprite({
            x: 475-40,
            y: 450-153,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_4=canvas.display.sprite({
            x: 475+60,
            y: 450-153,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_5=canvas.display.sprite({
            x: 475+160,
            y: 450-153,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();
        var arrow_6=canvas.display.sprite({
            x: 475+260,
            y: 450-153,
            image: "image/water-arrow/down.png",
            generate:false,
            frames: [
                {x:20,y:0,w:20,h:60,d:400},
                {x:0,y:0,w:20,h:60,d:800}

            ]
        }).add();

        var GD01 = canvas.display.GD({
            x: 0,
            y: 0,
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 860, y_cell: 466},
                {x_cell: 1153, y_cell: 466},
                {x_cell: 1228, y_cell: 466}

            ],  //拐点数组
            cellIndex: 0,         //当前数组索引
            Speed: 2,           //水流速度
            GDwidth: 20,          //管道宽度
            LineHeight: 20,       //线条的长??
            x_now: 0,        //当前绘制点的位置x
            y_now: 0,        //当前绘制点的位置y
            firstX: 0,       //第一个水流效果线段的起始坐标X
            firstY: 0,       //第一个水流效果线段的其实坐标Y
            beginHeight: 0,       //第一段管道第??个水流效果线段的长度
            endHeight: 0,     //第一段管道最后一个水流效果线段的长度
            paused: 0,
            full:0,
            fill:color_GD
        });
        canvas.addChild(GD01);

        var GD02 = canvas.display.GD({
            x: 0,
            y: 0,
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 860, y_cell: 466},
                {x_cell: 1063, y_cell: 466},
                {x_cell: 1063, y_cell: 346},
                {x_cell: 1228, y_cell: 346}

            ],  //拐点数组
            cellIndex: 0,         //当前数组索引
            Speed: 2,           //水流速度
            GDwidth: 20,          //管道宽度
            LineHeight: 20,       //线条的长??
            x_now: 0,        //当前绘制点的位置x
            y_now: 0,        //当前绘制点的位置y
            firstX: 0,       //第一个水流效果线段的起始坐标X
            firstY: 0,       //第一个水流效果线段的其实坐标Y
            beginHeight: 0,       //第一段管道第??个水流效果线段的长度
            endHeight: 0,     //第一段管道最后一个水流效果线段的长度
            paused: 0,
            full:0,
            fill:color_GD
        });
        canvas.addChild(GD02);
        var txt1=canvas.display.text({
            x:700,
            y:30,
            origin: { x:"center", y: "top" },
            font: "bold 32px sans-serif",
            fill:"#337ab7",
            text:"V型滤池工艺展示纵剖图"
        });
        canvas.addChild(txt1);
        var txt2=canvas.display.text({
            x:70,
            y:110,
            origin: { x:"center", y: "top" },
            font: "bold 25px sans-serif",
            fill:"#337ab7",
            text:"机加池来水"
        });
        canvas.addChild(txt2);
        var txt3=canvas.display.text({
            x:1200,
            y:400,
            origin: { x:"center", y: "top" },
            font: "bold 25px sans-serif",
            fill:"#337ab7",
            text:"V滤出水"
        });
        canvas.addChild(txt3);
        canvas.setLoop(function () {
            GD01.advance();
            GD02.advance();
            SC01.advance();
            SC02.advance();
            SC03.advance();

            if(SC01.full==1){
                SC02.start = 1;
            }
            if(SC02.full==1){
                arrow_1.start();
                arrow_2.start();
                arrow_3.start();
                arrow_4.start();
                arrow_5.start();
                arrow_6.start();
                arrow_1.stopAnimation();
                arrow_2.stopAnimation();
                arrow_3.stopAnimation();
                arrow_4.stopAnimation();
                arrow_5.stopAnimation();
                arrow_6.stopAnimation();
                SC03.start = 1;
            }
            if(SC03.full==1){
                //arrow_1.frame=2;
                //arrow_2.frame=2;
                arrow_3.frame=2;
                arrow_4.frame=2;
                arrow_5.frame=2;
                arrow_6.frame=2;
                GD01.paused = 1;
                GD02.paused = 1;
            }
            if(GD02.full==1){
                $scope.$apply(function(){
                    if($scope.waterStatus!="稳态"){
                        $scope.waterStatus="稳态";
                    }
                });
            }
            canvas.redraw();
        }).start();
        $scope.start=function(){
            if(this.value==1){
                this.innerText='开始演示';
                this.value=0;
                canvas.timeline.stop();
            }
            else{
                SC01.start=1;
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
        };
        $scope.restart= function () {
            GD01.init();
            GD02.init();
            SC01.init();
            SC02.init();
            SC03.init();
            SC01.start=1;
        }
    }]);
});