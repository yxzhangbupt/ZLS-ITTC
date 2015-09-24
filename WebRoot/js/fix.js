
oCanvas.domReady(function () {

//��������
    var canvas = oCanvas.create({
        canvas: "#canvas_fix",
        background: "#ccc",
        fps: 15
    });
    var bg = canvas.display.image({
        x: 0,
        y: 0,
        image: "image/fix.png"
    });
    canvas.addChild(bg);

    var GD01 = canvas.display.GD1({
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 736 ,y_cell: 168},
            {x_cell: 736, y_cell: 268},
            {x_cell: 906, y_cell: 268},
            {x_cell: 906, y_cell: 377},
            {x_cell: 816, y_cell: 377}

        ],  //�յ�����
        deta: 1,
        deta_x: 1,
        deta_y: 0,
        flag_x: 1,
        flag_y: 0,
        cellIndex: 0,         //��ǰ��������
        Speed: 2,           //ˮ���ٶ�
        GDwidth: 20,          //�ܵ����
        LineHeight: 30,       //�����ĳ���
        x_now: 0,        //��ǰ���Ƶ��λ��x
        y_now: 0,        //��ǰ���Ƶ��λ��y
        firstX: 0,       //��һ��ˮ��Ч���߶ε���ʼ���X
        firstY: 0,       //��һ��ˮ��Ч���߶ε���ʵ���Y
        beginHeight: 0,       //��һ�ιܵ���һ��ˮ��Ч���߶εĳ���
        endHeight: 0,     //��һ�ιܵ����һ��ˮ��Ч���߶εĳ���
        legacyHeight: 0,
        paused: 0,              //�Ƿ���ͣ
        full:0                      //�ܵ���ˮ�Ƿ��ѳ���
    });
    canvas.addChild(GD01);

    var GD02 = canvas.display.GD1({
        destination: {
            x_d: 0, y_d: 0
        },
        cells: [
            {x_cell: 600, y_cell: 100},
            {x_cell: 600, y_cell: 300},
            {x_cell: 600, y_cell: 500},
            {x_cell: 700, y_cell: 700},
            {x_cell: 900, y_cell: 700},
            {x_cell: 1100, y_cell: 500},
            {x_cell: 1100, y_cell: 100},
            {x_cell: 600, y_cell: 100}
        ],  //�յ�����
        deta: 1,
        deta_x: 1,
        deta_y: 0,
        flag_x: 1,
        flag_y: 0,
        cellIndex: 0,         //��ǰ��������
        Speed: 2,           //ˮ���ٶ�
        GDwidth: 20,          //�ܵ����
        LineHeight: 30,       //�����ĳ���
        x_now: 0,        //��ǰ���Ƶ��λ��x
        y_now: 0,        //��ǰ���Ƶ��λ��y
        firstX: 0,       //��һ��ˮ��Ч���߶ε���ʼ���X
        firstY: 0,       //��һ��ˮ��Ч���߶ε���ʵ���Y
        beginHeight: 0,       //��һ�ιܵ���һ��ˮ��Ч���߶εĳ���
        endHeight: 0,     //��һ�ιܵ����һ��ˮ��Ч���߶εĳ���
        legacyHeight: 0,
        paused: 0,
        full:0
    });
    GD02.bind("start",function(){
        GD02.paused=1;
        canvas.redraw();
    });
    canvas.addChild(GD02);
    canvas.setLoop(function () {
       
        GD01.advance();
        GD02.advance();
        if(GD01.full==1){
            GD02.trigger("start");
        }
        canvas.redraw();
    }).start();
    $("#btn_start").click(function(){
        GD01.paused=1;
    });
    $("#name_QS").click(function(){
        if(confirm("是否将“取水泵房”设置为维修状态？")){
            document.getElementById("fix_head").innerHTML="取水泵房维修闸门配合方案";
        }

    });
    $("#name_JJC1").click(function(){
        if(confirm("是否将“#1机加池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#1机加池维修闸门配合方案";
        }
    });
    $("#name_JJC2").click(function(){
        if(confirm("是否将“#2机加池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#2机加池维修闸门配合方案";
        }
    });
    $("#name_JJC3").click(function(){
        if(confirm("是否将“#3机加池”设置为维修状态？3")){
        	document.getElementById("fix_head").innerHTML="#3机加池维修闸门配合方案";
        }
    });
    $("#name_VL").click(function(){
        if(confirm("是否将“V型滤池设置为维修状态？”")){
        	document.getElementById("fix_head").innerHTML="V型滤池维修闸门配合方案";
        }
    });
    $("#name_TC").click(function(){
        if(confirm("是否将“活性炭池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="活性炭池维修闸门配合方案";
        }
    });
    $("#name_CY").click(function(){
        if(confirm("是否将“臭氧接触池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="臭氧接触池维修闸门配合方案";
        }
    });
    $("#name_HHJ1").click(function(){
        if(confirm("是否将“旧混合井”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="旧混合井维修闸门配合方案";
        }
    });
    $("#name_HHJ2").click(function(){
        if(confirm("是否将“新混合井”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="新混合井维修闸门配合方案";
        }
    });
    $("#name_HX").click(function(){
        if(confirm("是否将“虹吸滤池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="虹吸滤池维修闸门配合方案";
        }
    });
    $("#name_QSC1").click(function(){
        if(confirm("是否将“#1清水池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#1清水池维修闸门配合方案";
        }
    });
    $("#name_QSC2").click(function(){
        if(confirm("是否将“#2清水池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#2清水池维修闸门配合方案";
        }
    });
    $("#name_QSC3").click(function(){
        if(confirm("是否将“#3清水池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#3清水池维修闸门配合方案";
        }
    });
    $("#name_QSC4").click(function(){
        if(confirm("是否将“#4清水池”设置为维修状态？")){
        	document.getElementById("fix_head").innerHTML="#4清水池维修闸门配合方案";
        }
    });

});