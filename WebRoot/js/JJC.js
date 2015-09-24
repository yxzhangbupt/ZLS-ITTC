/**
 * Created by Administrator on 2015/7/21.
 */
oCanvas.domReady(function () {
    var speed_all=1.5,
        width_all=30,
        speed_SC=0.9,
        color_GD="#007fff",
        color_SC="#43d9f9";
    var canvas = oCanvas.create({
        canvas: "#canvas_JJC",
        background: "#ccc",
        fps: 50
    });

    var bg = canvas.display.image({
        x: 0,
        y: 0,
        image: "image/JJC_bg1.png"
    });

    var left_t=canvas.display.SC_show({
        x: 468,
        y: 429,
        Width: 45,
        Height: 38,
        height_now: 0,
        trail_flag: 1,
        trail: [
            {x_t: 0, y_t: 38},
            {x_t: 35, y_t: 38},
            {x_t: 35, y_t: 0}
        ],
        t: 1405,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    var right_t=canvas.display.SC_show({
        x: 792,
        y: 429,
        Width: 45,
        Height: 38,
        height_now: 0,
        trail_flag: 1,
        trail: [
            {x_t: 0, y_t: 0},
            {x_t: 0, y_t: 38},
            {x_t: 35, y_t: 38}
        ],
        t: 1405,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(left_t);
    canvas.addChild(right_t);
    var SC01 = canvas.display.SC_show({
        x: 368,
        y: 320,
        Width: 555,
        Height: 300,
        height_now: 0,
        trail_flag: 1,
        trail: [
            {x_t: 138, y_t: 0},
            {x_t: 414, y_t: 0},
            {x_t: 414, y_t: 87},
            {x_t: 552, y_t: 215},
            {x_t: 276, y_t: 297},
            {x_t: 0, y_t: 215},
            {x_t: 138, y_t: 87}
        ],
        t: 1405,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC01);

    var SC02 = canvas.display.SC_show({
        x: 208,
        y: 341,
        Width: 310,
        Height: 200,
        height_now: 0,
        trail_flag: 1,
        trail: [
            {x_t: 0, y_t: 24},
            {x_t: 0, y_t: 58},
            {x_t: 158, y_t: 193},
            {x_t: 289, y_t: 58},
            {x_t: 289, y_t: 0},
            {x_t: 39, y_t: 0},
            {x_t: 39, y_t: 23}
        ],
        t: 1405,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC02);

    var SC03 = canvas.display.SC_show({
        x: 790,
        y: 341,
        Width: 310,
        Height: 200,
        height_now: 0,
        trail_flag: 1,
        trail: [
            {x_t: 0, y_t: 0},
            {x_t: 0, y_t: 63},
            {x_t: 135, y_t: 193},
            {x_t: 291, y_t: 63},
            {x_t: 291, y_t: 24},
            {x_t: 255, y_t: 24},
            {x_t: 255, y_t: 0}
        ],
        t: 1405,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC03);
    var x=140;
    var xx=140;
    var t=200;
    var sprite = canvas.display.sprite({
        x:574,
        y:451,
        origin: { x: "left", y: "top" },
        image: "image/JJC_flash.png",
        frames:[
            {x:0,y:0,h:200,w:x,d:t},
            {x:xx,y:0,h:200,w:x,d:t},
            {x:2*xx,y:0,h:200,w:x,d:t},
            {x:3*xx,y:0,h:200,w:x,d:t},
            {x:4*xx,y:0,h:200,w:x,d:t},
            {x:5*xx,y:0,h:200,w:x,d:t},
            {x:6*xx,y:0,h:200,w:x,d:t},
            {x:7*xx,y:0,h:200,w:x,d:t},
            {x:8*xx,y:0,h:200,w:x,d:t}
        ],
        frame:1
    }).add();
    canvas.addChild(bg);

    var arrow_1=canvas.display.sprite({
        x: 475,
        y: 442,
        image: "image/water-arrow/down.png",
        generate:false,
        frames: [
            {x:20,y:0,w:20,h:60,d:400},
            {x:0,y:0,w:20,h:60,d:800}

        ]
    }).add();

    var arrow_2=canvas.display.sprite({
        x: 785,
        y: 442,
        image: "image/water-arrow/down.png",
        generate:false,
        frames: [
            {x:20,y:0,w:20,h:60,d:400},
            {x:0,y:0,w:20,h:60,d:800}

        ]
    }).add();
    var arrow_3=canvas.display.sprite({
        x: 477,
        y: 292,
        image: "image/water-arrow/left_roll.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:60,d:400},
            {x:0,y:0,w:60,h:60,d:800}

        ]
    }).add();
    var arrow_4=canvas.display.sprite({
        x: 760,
        y: 292,
        image: "image/water-arrow/right_roll.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:60,d:400},
            {x:0,y:0,w:60,h:60,d:800}

        ]
    }).add();
    var arrow_5=canvas.display.sprite({
        x: 384,
        y: 515,
        image: "image/water-arrow/right.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:40,d:400},
            {x:0,y:0,w:60,h:40,d:800}

        ]
    }).add();
    var arrow_6=canvas.display.sprite({
        x: 850,
        y: 515,
        image: "image/water-arrow/left.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:40,d:400},
            {x:0,y:0,w:60,h:40,d:800}
        ]
    }).add();
    var arrow_7=canvas.display.sprite({
        x: 775+280,
        y: 310+30,
        image: "image/water-arrow/right.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:40,d:400},
            {x:0,y:0,w:60,h:40,d:800}

        ]
    }).add();

    var arrow_81=canvas.display.sprite({
        x: 257,
        y: 340,
        image: "image/water-arrow/upright_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_82=canvas.display.sprite({
        x: 297,
        y: 340,
        image: "image/water-arrow/upright_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_83=canvas.display.sprite({
        x: 337,
        y: 340,
        image: "image/water-arrow/upright_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_84=canvas.display.sprite({
        x: 377,
        y: 340,
        image: "image/water-arrow/upright_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_85=canvas.display.sprite({
        x: 417,
        y: 340,
        image: "image/water-arrow/upright_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_91=canvas.display.sprite({
        x: 833,
        y: 340,
        image: "image/water-arrow/upleft_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_92=canvas.display.sprite({
        x: 873,
        y: 340,
        image: "image/water-arrow/upleft_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_93=canvas.display.sprite({
        x: 913,
        y: 340,
        image: "image/water-arrow/upleft_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_94=canvas.display.sprite({
        x: 953,
        y: 340,
        image: "image/water-arrow/upleft_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_95=canvas.display.sprite({
        x: 993,
        y: 340,
        image: "image/water-arrow/upleft_roll.png",
        generate:false,
        frames: [
            {x:35,y:0,w:30,h:50,d:400},
            {x:0,y:0,w:30,h:50,d:800}

        ]
    }).add();
    var arrow_101=canvas.display.sprite({
        x: 324,
        y: 465,
        image: "image/water-arrow/nike_left.png",
        generate:false,
        frames: [
            {x:80,y:0,w:80,h:50,d:400},
            {x:0,y:0,w:80,h:50,d:800}

        ]
    }).add();
    var arrow_102=canvas.display.sprite({
        x: 886,
        y: 465,
        image: "image/water-arrow/nike_right.png",
        generate:false,
        frames: [
            {x:80,y:0,w:80,h:50,d:400},
            {x:0,y:0,w:80,h:50,d:800}

        ]
    }).add();
    var arrow_111=canvas.display.sprite({
        x: 324+185,
        y: 465+57,
        image: "image/water-arrow/right_throw.png",
        generate:false,
        frames: [
            {x:70,y:0,w:70,h:50,d:400},
            {x:0,y:0,w:70,h:50,d:800}

        ]
    }).add();
    var arrow_112=canvas.display.sprite({
        x: 324+381,
        y: 465+52,
        image: "image/water-arrow/left_throw.png",
        generate:false,
        frames: [
            {x:70,y:0,w:70,h:50,d:400},
            {x:0,y:0,w:70,h:50,d:800}

        ]
    }).add();
    var GD01 = canvas.display.GD({
        x: 0,
        y: 0,
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 127,y_cell: 511},
            {x_cell: 187, y_cell: 511},
            {x_cell: 259, y_cell: 450},
            {x_cell: 477, y_cell: 450}

        ],  //閹锋劗鍋ｉ弫鎵矋
        cellIndex: 0,         //瑜版挸澧犻弫鎵矋缁便垹绱�
        Speed: 2,           //濮樺瓨绁﹂柅鐔峰
        GDwidth: width_all,          //缁狅繝浜剧�钘夊
        LineHeight: 10,       //缁炬寧娼惃鍕毐閿燂拷
        x_now: 0,        //瑜版挸澧犵紒妯哄煑閻愬湱娈戞担宥囩枂x
        y_now: 0,        //瑜版挸澧犵紒妯哄煑閻愬湱娈戞担宥囩枂y
        firstX: 0,       //缁楊兛绔存稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戠挧宄邦潗閸ф劖鐖
        firstY: 0,       //缁楊兛绔存稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戦崗璺虹杽閸ф劖鐖
        beginHeight: 0,       //缁楊兛绔村▓鐢殿吀闁挾顑囬敓锟芥稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戦梹鍨
        endHeight: 0,     //缁楊兛绔村▓鐢殿吀闁挻娓堕崥搴濈娑擃亝鎸夊ù浣规櫏閺嬫粎鍤庡▓鐢垫畱闂�灝瀹�
        paused: 1,
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
            {x_cell: 1109,y_cell: 380},
            {x_cell: 1109, y_cell: 500},
            {x_cell: 1118, y_cell: 523},
            {x_cell: 1209, y_cell: 523}

        ],  //閹锋劗鍋ｉ弫鎵矋
        cellIndex: 0,         //瑜版挸澧犻弫鎵矋缁便垹绱�
        Speed: 2,           //濮樺瓨绁﹂柅鐔峰
        GDwidth: width_all,          //缁狅繝浜剧�钘夊
        LineHeight: 10,       //缁炬寧娼惃鍕毐閿燂拷
        x_now: 0,        //瑜版挸澧犵紒妯哄煑閻愬湱娈戞担宥囩枂x
        y_now: 0,        //瑜版挸澧犵紒妯哄煑閻愬湱娈戞担宥囩枂y
        firstX: 0,       //缁楊兛绔存稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戠挧宄邦潗閸ф劖鐖
        firstY: 0,       //缁楊兛绔存稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戦崗璺虹杽閸ф劖鐖
        beginHeight: 0,       //缁楊兛绔村▓鐢殿吀闁挾顑囬敓锟芥稉顏呮寜濞翠焦鏅ラ弸婊呭殠濞堢數娈戦梹鍨
        endHeight: 0,     //缁楊兛绔村▓鐢殿吀闁挻娓堕崥搴濈娑擃亝鎸夊ù浣规櫏閺嬫粎鍤庡▓鐢垫畱闂�灝瀹�
        paused: 0,
        full:0,
        fill:color_GD
    });
    canvas.addChild(GD02);
    var txt1=canvas.display.text({
        x:650,
        y:30,
        origin: { x:"center", y: "top" },
        font: "bold 32px sans-serif",
        fill:"#eeeeee",
        text:"机加池工艺展示纵剖图"
    });
    canvas.addChild(txt1);


    canvas.setLoop(function () {
        GD01.advance();
        GD02.advance();
        SC01.advance();
        SC02.advance();
        SC03.advance();
        left_t.advance();
        right_t.advance();
        
        if(GD01.full==1){
            left_t.start=1;
            right_t.start=1;

            arrow_1.start();
            arrow_2.start();
            arrow_111.start();
            arrow_112.start();
        }
        if(left_t.full==1 && right_t.full==1){
            SC01.start=1;
        }
        if(SC01.full==1){
        	SC02.start = 1;
        	SC03.start = 1;
            arrow_1.frame=2;
            arrow_2.frame=2;
            arrow_3.start();
            arrow_4.start();
            arrow_5.start();
            arrow_6.start();
            arrow_81.start();
            arrow_82.start();
            arrow_83.start();
            arrow_84.start();
            arrow_85.start();
            arrow_91.start();
            arrow_92.start();
            arrow_93.start();
            arrow_94.start();
            arrow_95.start();
            arrow_101.start();
            arrow_102.start();
            arrow_111.frame=2;
            arrow_112.frame=2;

        }
        if(SC02.full == 1 && SC03.full == 1){
        	GD02.paused = 1;
            arrow_3.frame=2;
            arrow_4.frame=2;
            arrow_5.frame=2;
            arrow_6.frame=2;
            arrow_81.frame=2;
            arrow_82.frame=2;
            arrow_83.frame=2;
            arrow_84.frame=2;
            arrow_85.frame=2;
            arrow_91.frame=2;
            arrow_92.frame=2;
            arrow_93.frame=2;
            arrow_94.frame=2;
            arrow_95.frame=2;
            arrow_101.frame=2;
            arrow_102.frame=2;

            arrow_7.start();
            arrow_1.stopAnimation();
            arrow_2.stopAnimation();
            arrow_3.stopAnimation();
            arrow_4.stopAnimation();
            arrow_5.stopAnimation();
            arrow_6.stopAnimation();
            arrow_7.stopAnimation();
        }
        canvas.redraw();
    }).start();
    $("#btn_start").click(function(){
        if(this.value==1){
            this.innerText='开始';
            this.value=0;
            canvas.timeline.stop();
            sprite.stopAnimation();
        }
        else{
            GD01.paused=1;
            canvas.redraw();
            this.innerText='暂停';
            this.value=1;
            canvas.timeline.start();
            sprite.startAnimation();
        }

    });
});
