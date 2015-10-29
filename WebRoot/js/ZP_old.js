/**
 * Created by Administrator on 2015/7/28.
 */
$(document).ready(function(){
	
    oCanvas.domReady(function () {
    	
        var speed_all=1.5,
            width_all=20,
            speed_SC=0.9,
            color_GD="#007fff",
            color_SC="#43d9f9",
            color_txt="#337ab7";

        //调试，水池动画�
        var start_all = 0,
            paused_all = 0;


        var canvas = oCanvas.create({
            canvas: "#canvas_ZP_old",
            background: "#ccc",
            fps: 50
        });
        var bg = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/waterLine_old.png"
        });
        var bg1 = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/waterLine_bg.png"
        });

        canvas.addChild(bg1);
        
        var SC01 = canvas.display.SC_show({
            x: 234, y: 163,
            Width: 354, Height: 190,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            start:start_all,
            full:0,
            speed:speed_SC,
            fill: color_SC
        });
        canvas.addChild(SC01);

        var SC02 = canvas.display.SC_show({
            x: 720, y: 180,
            Width: 74, Height: 161,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            start:start_all,
            full:0,
            speed:speed_SC,
            fill: color_SC
        });
        canvas.addChild(SC02);

        var SC03 = canvas.display.SC_show({
            x: 793, y: 205,
            Width: 37, Height:138,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            start:start_all,
            full:0,
            speed:speed_SC,
            fill: color_SC
        });
        canvas.addChild(SC03);

        var SC04 = canvas.display.SC_show({
            x: 1113,
            y: 172,
            Width: 270,
            Height: 220,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 68, y_t: 0},
                {x_t: 68, y_t: 103},
                {x_t: 0, y_t: 175},
                {x_t: 134, y_t: 232},
                {x_t: 267, y_t: 175},
                {x_t: 193, y_t: 103},
                {x_t: 193, y_t: 0}
            ],
            t: 1405,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC04);

        var SC05 = canvas.display.SC_show({
            x: 1041,
            y: 186,
            Width: 142,
            Height: 156,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 0, y_t: 0},
                {x_t: 0, y_t: 39},
                {x_t: 76, y_t: 156},
                {x_t: 144, y_t: 95},
                {x_t: 144, y_t: 0}
            ],
            t: 1405,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC05);

        var SC06 = canvas.display.SC_show({
            x: 1293,
            y: 186,
            Width: 165,
            Height: 156,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 0, y_t: 0},
                {x_t: 0, y_t: 95},
                {x_t: 84, y_t: 156},
                {x_t: 158, y_t: 28},
                {x_t: 158, y_t: 0}
            ],
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC06);

        var SC07 = canvas.display.SC_show({
            x: 1343,
            y: 600,
            Width: 103,
            Height: 52,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC07);

        var SC08 = canvas.display.SC_show({
            x: 1153,
            y: 600,
            Width: 103,
            Height: 52,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC08);

        var SC09 = canvas.display.SC_show({
            x: 1005,
            y: 560,
            Width: 28,
            Height: 93,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC09);

        var SC10 = canvas.display.SC_show({
            x: 954,
            y: 560,
            Width: 49,
            Height: 93,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC10);

        var SC11 = canvas.display.SC_show({
            x: 878,
            y: 560,
            Width: 76,
            Height: 93,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC11);

        var SC12 = canvas.display.SC_show({
            x: 827,
            y: 560,
            Width: 49,
            Height: 93,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC12);

        var SC13 = canvas.display.SC_show({
            x: 791,
            y: 560,
            Width: 35,
            Height: 93,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC13);

        var SC14 = canvas.display.SC_show({
            x: 539,
            y: 563,
            Width: 114,
            Height: 74,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC14);

        var SC15 = canvas.display.SC_show({
            x: 164,
            y: 576,
            Width: 336,
            Height: 77,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC15);




        var GD01 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 170 ,y_cell: 333},
                {x_cell: 242, y_cell: 333}
            ],
            deta: 1,
            deta_x: 1,
            deta_y: 0,
            flag_x: 1,
            flag_y: 0,
            cellIndex: 0,
            Speed: speed_all,
            GDwidth: 40,
            LineHeight: 5,
            x_now: 0,
            y_now: 0,
            firstX: 0,
            firstY: 0,
            beginHeight: 0,
            endHeight: 0,
            legacyHeight: 0,
            paused: 1,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD01);

        var GD02 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 576, y_cell: 330},
                {x_cell: 749, y_cell: 330},
                {x_cell: 749, y_cell: 305}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD02);

        var GD03 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 811, y_cell: 205},
                {x_cell: 811, y_cell: 333},
                {x_cell: 1049, y_cell: 333},
                {x_cell: 1092, y_cell: 298},
                {x_cell: 1183, y_cell: 298}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed: speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD03);

        var GD04 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 1466, y_cell: 212},
                {x_cell: 1466, y_cell: 304},
                {x_cell: 1494, y_cell: 304},
                {x_cell: 1494, y_cell: 590},
                {x_cell: 1438, y_cell: 590}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed: speed_all,
            GDwidth: 30,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD04);

        var GD05 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 1466, y_cell: 212},
                {x_cell: 1466, y_cell: 304},
                {x_cell: 1494, y_cell: 304},
                {x_cell: 1494, y_cell: 495},
                {x_cell: 1130, y_cell: 495},
                {x_cell: 1130, y_cell: 590},
                {x_cell: 1160, y_cell: 590}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed: speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD05);

        var GD06 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 1264, y_cell: 640},
                {x_cell: 1264, y_cell: 536},
                {x_cell: 1284, y_cell: 536},
                {x_cell: 1284, y_cell: 697},
                {x_cell: 1052, y_cell: 697},
                {x_cell: 1052, y_cell: 634},
                {x_cell: 1016, y_cell: 634}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed: speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD06);

        var GD07 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                    {x_cell: 1264, y_cell: 640},
                    {x_cell: 1264, y_cell: 536},
                    {x_cell: 1284, y_cell: 536},
                    {x_cell: 1284, y_cell: 697},
                    {x_cell: 515, y_cell: 697},
                    {x_cell: 515, y_cell: 633},
                    {x_cell: 493, y_cell: 633}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD07);

        var GD08 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 1332, y_cell: 640},
                {x_cell: 1332, y_cell: 536},
                {x_cell: 1312, y_cell: 536},
                {x_cell: 1312, y_cell: 719},
                {x_cell: 1052, y_cell: 719},
                {x_cell: 1052, y_cell: 697}

            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD08);
        
        var GD09 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 1332, y_cell: 640},
                {x_cell: 1332, y_cell: 536},
                {x_cell: 1312, y_cell: 536},
                {x_cell: 1312, y_cell: 719},
                {x_cell: 304, y_cell: 719},
                {x_cell: 304, y_cell: 650}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD09);
        
        var GD10 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 137, y_cell: 651},
                {x_cell: 137, y_cell: 605},
                {x_cell:  49, y_cell: 605}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD10);
        
        var GD11 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 793, y_cell: 584},
                {x_cell: 742, y_cell: 584},
                {x_cell: 742, y_cell: 642},
                {x_cell: 697, y_cell: 642}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD11);
        
        var GD12 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 529, y_cell: 597},
                {x_cell: 529, y_cell: 633},
                {x_cell: 493, y_cell: 633}
            ],  //锟秸碉拷锟斤拷锟斤拷
            deta: 1,
            deta_x: 1, deta_y: 0,
            flag_x: 1, flag_y: 0,
            cellIndex: 0,
            Speed:speed_all,
            GDwidth: 20,
            LineHeight: 5,
            x_now: 0,  y_now: 0,
            firstX: 0, firstY: 0,
            beginHeight: 0, endHeight: 0,
            legacyHeight: 0,
            paused: paused_all,
            fill:color_GD,
            full:0
        });
        canvas.addChild(GD12);
        
        canvas.addChild(bg);

//        var txt1=canvas.display.text({
//            x: 770,
//            y: 10,
//            origin: { x: "center", y: "top" },
//            font: "bold 25px sans-serif",
//            text: "当前速度:"+((canvas.settings.fps-50)/50+1)+"倍速",
//            fill: color_txt
//        });

        var txt_QS=canvas.display.text({
            x:300,
            y:400,
            origin: { x: "center", y: "top" },
            font: "bold 22px sans-serif",
            text: "取水泵房",
            fill: color_txt
        });

        var txt_Title=canvas.display.text({
            x:180,
            y:20,
            origin: { x: "center", y: "top" },
            font: "bold 29px sans-serif",
            text:"旧工艺线纵剖展示图",
            fill:color_txt
        });
        var txt_HHJ=txt_QS.clone({
            x:780,
            text:"混合井"
        });

        var txt_JJC=txt_QS.clone({
            x:1250,
            y:440,
            text:"机加池"
        });

        var txt_HX=txt_QS.clone({
            x:1290,
            y:726,
            text:"虹吸滤池"
        });
        var txt_CY=txt_QS.clone({
            x:890,
            y:726,
            text:"臭氧混合池"
        });
        var txt_TC=txt_QS.clone({
            x:640,
            y:726,
            text:"活性炭池"
        });
        var txt_QSC=txt_QS.clone({
            x:340,
            y:726,
            text:"清水池"
        });

//        canvas.addChild(txt1);
        canvas.addChild(txt_Title);
        canvas.addChild(txt_QS);
        canvas.addChild(txt_HHJ);
        canvas.addChild(txt_JJC);
        canvas.addChild(txt_HX);
        canvas.addChild(txt_CY);
        canvas.addChild(txt_TC);
        canvas.addChild(txt_QSC);


        canvas.setLoop(function () {
            
            GD01.advance();
            GD02.advance();
            GD03.advance();
            GD04.advance();
            GD05.advance();
            GD06.advance();
//            GD07.advance();
            GD08.advance();
//            GD09.advance();
            GD10.advance();
            GD11.advance();
            GD12.advance();

            SC01.advance();
            SC02.advance();
            SC03.advance();
            SC04.advance();
            SC05.advance();
            SC06.advance();
            SC07.advance();
            SC08.advance();
            SC09.advance();
            SC10.advance();
            SC11.advance();
            SC12.advance();
            SC13.advance();
            SC14.advance();
            SC15.advance();



            if(GD01.full==1){
                SC01.start = 1;
            }
            if(SC01.full==1){
                GD02.paused = 1;
            }
            if(GD02.full==1) {
                SC02.start = 1;
            }
            if(SC02.full==1) {
                SC03.start = 1;
            }
            if(SC03.full==1) {
                GD03.paused = 1;
            }
            if(GD03.full==1) {
                SC04.start = 1;
            }
            if(SC04.full==1) {
                SC05.start = 1;
                SC06.start = 1;
            }
            if(SC05.full==1 && SC06.full==1) {
                GD04.paused = 1;
                GD05.paused = 1;
            }
            if(GD04.full==1 && GD05.full==1) {
                SC07.start = 1;
                SC08.start = 1;
            }
            if(SC07.full==1 && SC08.full==1) {
                GD06.paused = 1;
//                GD07.paused = 1;
                GD08.paused = 1;
//                GD09.paused = 1;
            }
            if(GD08.full==1) {
                SC09.start = 1;
            }
            if(SC09.full==1) {
            	SC10.start = 1;
            }
            if(SC10.full==1) {
                SC11.start = 1;
            }
            if(SC11.full==1) {
                SC12.start = 1;
            }
            if(SC12.full==1) {
                SC13.start = 1;
            }
            if(SC13.full==1) {
                GD11.paused = 1;
                GD06.paused = 1;
            }
            if(GD06.full==1 && GD11.full==1) {
                SC14.start = 1;
            }
            if(SC14.full==1) {
                GD12.paused = 1;
            }
//            if(GD07.full==1 && GD09.full==1 && GD12.full==1) {
            if(GD12.full==1) {
                SC15.start = 1;
            }
            if(SC15.full==1) {
                GD10.paused = 1;
            } 
            
            
            canvas.redraw();
        }).start();

        $("#btn_start").click(function(){
            if(this.value==1){
                this.innerText='开始';
                this.value=0;
                canvas.timeline.stop();
            }
            else{
                GD01.paused=1;
                this.innerText='暂停';
                this.value=1;
                canvas.timeline.start();
            }

        });
        $("#btn_reset").click(function(){

            GD01.init();
            GD02.init();
            GD03.init();
            GD04.init();
            GD05.init();
            GD06.init();
            //GD07.init();
            GD08.init();
            GD09.init();
            GD10.init();
            GD11.init();
            GD12.init();

            SC01.init();
            SC02.init();
            SC03.init();
            SC04.init();
            SC05.init();
            SC06.init();
            SC07.init();
            SC08.init();
            SC09.init();
            SC10.init();
            SC11.init();
            SC12.init();
            SC13.init();
            SC14.init();
            SC15.init();
            GD01.paused=1;
            canvas.settings.fps=50;
            document.getElementById("txt_speed").innerHTML=((canvas.settings.fps-50)/50+1.0);
            $("#btn_start").innerText='暂停';
            $("#btn_start").value=0;


        });
        $("#btn_upS").click(function(){
            canvas.settings.fps+=5;

            document.getElementById("txt_speed").innerHTML=((canvas.settings.fps-50)/50+1.0);
            canvas.redraw();
        });
        $("#btn_downS").click(function () {
            if(canvas.settings.fps>=25)
                canvas.settings.fps-=5;

            document.getElementById("txt_speed").innerHTML=((canvas.settings.fps-50)/50+1.0);
            canvas.redraw();
        });
    });
});