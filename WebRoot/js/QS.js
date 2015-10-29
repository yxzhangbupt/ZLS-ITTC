/**
 * Created by Administrator on 2015/7/21.
 */
oCanvas.domReady(function () {

    var canvas = oCanvas.create({
        canvas: "#canvas_QS_zp",
        background: "#ccc",
        fps: 50
    });
    var bg = canvas.display.image({
        x: 0,
        y: 0,
        image: "image/QS_v.png"
    });
//    canvas.addChild(bg);
    var speed_all=1.5,
        width_all=30,
        speed_SC=0.9,
        color_GD="#007fff",
        color_SC="#43d9f9";

    
   
    var SC01 = canvas.display.SC_show({
        x: 326,
        y: 200,
        Width: 171,
        Height: 438,
        height_now: 0,
        trail_flag: 0,
        t: 0,
        fill: color_SC,
        speed:speed_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC01);

    var SC02 = canvas.display.SC_show({
        x: 496,
        y: 569,
        Width: 183,
        Height: 70,
        height_now: 0,
        trail_flag: 0,
        t: 0,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC02);

    var SC03 = canvas.display.SC_show({
        x: 841,
        y: 219,
        Width: 142,
        Height: 393,
        height_now: 0,
        trail_flag: 0,
        t: 150,
        speed:speed_SC,
        fill: color_SC,
        full:0,
        start:0
    });
    canvas.addChild(SC03);
    var fg = canvas.display.image({
        x: 0,
        y: 0,
        image: "image/QS_v.png"
    });
    canvas.addChild(fg);

    var arrow_1=canvas.display.sprite({
        x: 850,
        y: 200,
        image: "image/water-arrow/left_roll.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:60,d:400},
            {x:0,y:0,w:60,h:60,d:800}
        ]
    }).add();

    var arrow_2=canvas.display.sprite({
        x: 905,
        y: 200,
        image: "image/water-arrow/right_roll.png",
        generate:false,
        frames: [
            {x:60,y:0,w:60,h:60,d:400},
            {x:0,y:0,w:60,h:60,d:800}
        ]
    }).add();

    var GD01 = canvas.display.GD({
        x: 0,
        y: 0,
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 195, y_cell: 587},
            {x_cell: 335, y_cell: 587}
        ],
        deta: 1,
        deta_x: 1,
        deta_y: 0,
        flag_x: 1,
        flag_y: 0,
        cellIndex: 0,         //��ǰ��������
        Speed: speed_all,           //ˮ���ٶ�
        GDwidth: width_all,          //�ܵ����
        LineHeight: 10,       //�����ĳ���
        x_now: 0,        //��ǰ���Ƶ��λ��x
        y_now: 0,        //��ǰ���Ƶ��λ��y
        firstX: 0,       //��һ��ˮ��Ч���߶ε���ʼ���X
        firstY: 0,       //��һ��ˮ��Ч���߶ε���ʵ���Y
        beginHeight: 0,       //��һ�ιܵ���һ��ˮ��Ч���߶εĳ���
        endHeight: 0,     //��һ�ιܵ����һ��ˮ��Ч���߶εĳ���
        legacyHeight: 0,
        paused: 1,
        fill:color_GD,
        full:0
    });

    canvas.addChild(GD01);

    var GD02 = canvas.display.GD({
        x: 0,
        y: 0,
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 597, y_cell: 600},
            {x_cell: 597, y_cell: 520},
            {x_cell: 905, y_cell: 520},
            {x_cell: 905, y_cell: 220}
        ],  //�յ�����
        deta: 1,
        deta_x: 1,
        deta_y: 0,
        flag_x: 1,
        flag_y: 0,
        cellIndex: 0,
        Speed:speed_all,
        GDwidth: width_all,
        LineHeight: 10,
        x_now: 0,
        y_now: 0,
        firstX: 0,
        firstY: 0,
        beginHeight: 0,
        endHeight: 0,
        legacyHeight: 0,
        paused: 0,
        fill:color_GD,
        full:0
    });
    canvas.addChild(GD02);

    var GD03 = canvas.display.GD({
        x: 0,
        y: 0,
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 985, y_cell: 587},
            {x_cell: 1146, y_cell: 587}

        ],
        deta: 1,
        deta_x: 1,
        deta_y: 0,
        flag_x: 1,
        flag_y: 0,
        cellIndex: 0,         //��ǰ��������
        Speed: speed_all,           //ˮ���ٶ�
        GDwidth: width_all,          //�ܵ����
        LineHeight: 10,       //�����ĳ���
        x_now: 0,        //��ǰ���Ƶ��λ��x
        y_now: 0,        //��ǰ���Ƶ��λ��y
        firstX: 0,       //��һ��ˮ��Ч���߶ε���ʼ���X
        firstY: 0,       //��һ��ˮ��Ч���߶ε���ʵ���Y
        beginHeight: 0,       //��һ�ιܵ���һ��ˮ��Ч���߶εĳ���
        endHeight: 0,     //��һ�ιܵ����һ��ˮ��Ч���߶εĳ���
        legacyHeight: 0,
        paused: 0,
        fill:color_GD,
        full:0
    });
    canvas.addChild(GD03);
    var txt1=canvas.display.text({
        x:700,
        y:30,
        origin: { x:"center", y: "top" },
        font: "bold 32px sans-serif",
        fill:"#43d9f9",
        text:"取水泵房工艺展示纵剖图"
    });
    canvas.addChild(txt1);
    canvas.setLoop(function () {
        GD01.advance();
        SC01.advance();

        SC02.advance();

        GD02.advance();

        SC03.advance();

        GD03.advance();

        if(GD01.full==1){
        	SC01.start = 1;
        	SC02.start = 1;
        }

        if(SC02.full==1){
        	GD02.paused = 1;
        }
        if(GD02.full==1) {
        	SC03.start = 1;
            arrow_1.start();
            arrow_2.start();

        }
        if(SC03.full==1) {
        	GD03.paused = 1;
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
            canvas.redraw();
            this.innerText='暂停';
            this.value=1;
            canvas.timeline.start();
        }

    });
});
