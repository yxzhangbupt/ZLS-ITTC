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
        
        //调试，水池动画总开关	
        var start_all = 0,
        	paused_all = 0;
        

        var canvas = oCanvas.create({
            canvas: "#canvas_ZP_new",
            background: "#ccc",
            fps: 50
        });
        var bg = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/waterLine_new.png"
        });
        var bg1 = canvas.display.image({
            x: 0,
            y: 0,
            image: "image/waterLine_bg.png"
        });

        canvas.addChild(bg1);
        var SC01 = canvas.display.SC_show({
            x: 99, y: 154,
            Width: 260, Height: 192,
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
            x: 422, y: 172,
            Width: 75, Height: 162,
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
            x: 497, y: 195,
            Width: 43, Height:139,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            start:start_all,
            full:0,
            speed:speed_SC,
            fill: color_SC
        });
        canvas.addChild(SC03);

        var left_t=canvas.display.SC_show({
            x:832,
            y:280,
            Width:15,
            Height:15,
            height_now:0,
            trail_flag:1,
            trail:[
                {x_t:0,y_t:15},
                {x_t:15,y_t:15},
                {x_t:15,y_t:0}
            ],
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        }).add();
        var right_t=canvas.display.SC_show({
            x:978,
            y:271,
            Width:25,
            Height:25,
            height_now:0,
            trail_flag:1,
            trail:[
                {x_t:0,y_t:0},
                {x_t:0,y_t:25},
                {x_t:25,y_t:25}
            ],
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        }).add();
        var SC04 = canvas.display.SC_show({
            x: 778,
            y: 166,
            Width: 290,
            Height: 230,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 72, y_t: 0},
                {x_t: 72, y_t: 104},
                {x_t: 0, y_t: 174},
                {x_t: 140, y_t: 228},
                {x_t: 280, y_t: 172},
                {x_t: 200, y_t: 105},
                {x_t: 201, y_t: 0}
            ],
            t: 1405,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC04);

        var SC05 = canvas.display.SC_show({
            x: 711,
            y: 176,
            Width: 142,
            Height: 155,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 0, y_t: 0},
                {x_t: 0, y_t: 42},
                {x_t: 72, y_t: 151},
                {x_t: 138, y_t: 99},
                {x_t: 138, y_t: 0}
            ],
            t: 1405,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC05);

        var SC06 = canvas.display.SC_show({
            x: 975,
            y: 179,
            Width: 155,
            Height: 155,
            height_now: 0,
            trail_flag: 1,
            trail: [
                {x_t: 0, y_t: 0},
                {x_t: 0, y_t: 93},
                {x_t: 73, y_t: 151},
                {x_t: 152, y_t: 31},
                {x_t: 1527, y_t: 0}
            ],
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC06);
        
        var SC07 = canvas.display.SC_show({
            x: 1208,
            y: 244,
            Width: 44,
            Height: 14,
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
            x: 1245,
            y: 244,
            Width: 14,
            Height: 14,
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
            x: 1262,
            y: 247,
            Width: 164,
            Height: 68,
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
            x: 1497,
            y: 599,
            Width: 31,
            Height: 94,
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
            x: 1444,
            y: 599,
            Width: 51,
            Height: 94,
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
            x: 1366,
            y: 599,
            Width: 78,
            Height: 94,
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
            x: 1316,
            y: 599,
            Width: 53,
            Height: 94,
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
            x: 1276,
            y: 599,
            Width: 38,
            Height: 94,
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
            x: 904,
            y: 600,
            Width: 150,
            Height: 55,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC15);
        
        var SC16 = canvas.display.SC_show({
            x: 411,
            y: 602,
            Width: 388,
            Height: 74,
            height_now: 0,
            trail_flag: 0,
            t: 0,
            fill: color_SC,
            speed:speed_SC,
            full:0,
            start:start_all
        });
        canvas.addChild(SC16);


        var GD01 = canvas.display.GD({
            destination: {
                x_d: 0, y_d: 0
            },
            cells: [
                {x_cell: 33 ,y_cell: 324},
                {x_cell: 105, y_cell: 324}
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
                {x_cell: 356, y_cell: 321},
                {x_cell: 458, y_cell: 321},
                {x_cell: 458, y_cell: 294}
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
                {x_cell: 518, y_cell: 196},
                {x_cell: 518, y_cell: 324},
                {x_cell: 717, y_cell: 324},
                {x_cell: 760, y_cell: 289},
                {x_cell: 850, y_cell: 289}
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
                {x_cell: 1139, y_cell: 200},
                {x_cell: 1139, y_cell: 252},
                {x_cell: 1207, y_cell: 252}
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
                {x_cell: 1520, y_cell: 335},
                {x_cell: 1558, y_cell: 335},
                {x_cell: 1558, y_cell: 683},
                {x_cell: 1527, y_cell: 683}
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
                {x_cell: 1280, y_cell: 630},
                {x_cell: 1225, y_cell: 630},
                {x_cell: 1225, y_cell: 692},
                {x_cell: 1104, y_cell: 692}
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
                {x_cell: 888, y_cell: 637},
                {x_cell: 888, y_cell: 676},
                {x_cell: 855, y_cell: 676},
                {x_cell: 808, y_cell: 703},
                {x_cell: 670, y_cell: 703},
                {x_cell: 670, y_cell: 671}
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
                {x_cell: 418, y_cell: 662},
                {x_cell: 360, y_cell: 662}
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
        canvas.addChild(bg);

       

        var txt_QS=canvas.display.text({
            x:240,
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
            text:"新工艺线纵剖展示图",
            fill:color_txt
        });
        var txt_HHJ=txt_QS.clone({
            x:470,
            text:"混合井"
        });

        var txt_JJC=txt_QS.clone({
            x:916,
            y:440,
            text:"机加池"
        });

        var txt_HX=txt_QS.clone({
            x:1350,
            y:426,
            text:"V型滤池"
        });
        var txt_CY=txt_QS.clone({
            x:1390,
            y:726,
            text:"臭氧混合池"
        });
        var txt_TC=txt_QS.clone({
            x:1010,
            y:726,
            text:"活性炭池"
        });
        var txt_QSC=txt_QS.clone({
            x:640,
            y:726,
            text:"清水池"
        });

  
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
            GD07.advance();
            GD08.advance();

            SC01.advance();
            SC02.advance();
            SC03.advance();
            left_t.advance();
            right_t.advance();
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
            SC16.advance();


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
            if(GD03.full==1){
                left_t.start=1;
                right_t.start=1;
            }
            if(right_t.full==1) {
                SC04.start = 1;
            }
            if(SC04.full==1) {
                SC05.start = 1;
                SC06.start = 1;
            }
            if(SC05.full==1 && SC06.full==1) {
                GD04.paused = 1;
            }
            if(GD04.full==1) {
                SC07.start = 1;
            }
            if(SC07.full==1) {
                SC08.start = 1;
            }
            if(SC08.full==1) {
                SC09.start = 1;
            }
            if(SC09.full==1) {
                GD05.paused = 1;
            }
            if(GD05.full==1) {
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
            	SC14.start = 1;
            }
            if(SC14.full==1) {
                GD06.paused = 1;
            }
            if(GD06.full==1) {
                SC15.start = 1;
            }
            if(SC15.full==1) {
                GD07.paused = 1;
            }
            if(GD07.full==1) {
                SC16.start = 1;
            }
            if(SC16.full==1) {
                GD08.paused = 1;
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
            GD07.init();
            GD08.init();
            SC01.init();
            SC02.init();
            SC03.init();
            left_t.init();
            right_t.init();
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
            SC16.init();
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