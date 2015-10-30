/**
 * Created by Administrator on 2015/7/21.
 */
oCanvas.domReady(function(){
   $("#btn_start").text("开始演示");
    //var canvas=oCanvas.create({
    //    canvas:"#canvas_test",
    //    background:"#eee"
    //});
    //var button_keep=canvas.display.rectangle({
    //        x:30,
    //        y:80,
    //        width:200,
    //        height:150,
    //        fill:"#000"
    //    }),
    //    button_clear=button_keep.clone({
    //        x:250
    //    });
    //canvas.addChild(button_keep);
    //canvas.addChild(button_clear);
    //button_keep.bind("click tap", function () {
    //    canvas.clear();
    //});
    //button_clear.dragAndDrop();
    //

    //水池的构造器，上升型
    var constructor = function (settings, core) {

        return oCanvas.extend({
            core: core,
            shapeType: "rectangular",

            init: function () {

            },
            advance: function () {
                if(this.height_now<this.height){
                    this.height_now+=1;
                }
                else{
                    this.height_now=0;
                }
            },
            draw: function () {
                var canvas = this.core.canvas,
                    origin = this.getOrigin(),
                    x = this.abs_x - origin.x,
                    y = this.abs_y - origin.y;

                canvas.beginPath();

                if (this.fill !== "") {
                    canvas.fillStyle = this.fill;
                    canvas.fillRect(x, y+this.height-this.height_now, this.width, this.height_now);
                }
                canvas.strokeStyle = this.strokeColor;
                canvas.lineWidth = this.strokeWidth;
                canvas.strokeRect(x,y,this.width,this.height);
                //
                //if (this.strokeWidth > 0) {
//                    canvas.strokeStyle = this.strokeColor;
//                    canvas.lineWidth = this.strokeWidth;
                //    canvas.strokeRect(x, y+this.height-this.height_now, this.width, this.height_now);
                //}
                canvas.stroke();
                canvas.closePath();
            }
        }, settings);
    };
//水池的构造函数
    oCanvas.registerDisplayObject("SC", constructor, "init");
//创建画布
    var canvas = oCanvas.create({
        canvas: "#canvas_QS",
        background: "#ccc",
        fps:1
    });
    var bg=canvas.display.image({
        x:0,
        y:0,
        image:"./image/FMControl.png"
    });
    canvas.addChild(bg);
    var img1=canvas.display.image({
        x:692,
        y:58,
        image:"image/main/qs.png"
    });
    canvas.addChild(img1);
    img1.bind("click",function(){
        window.location.href="GN_getWater.jsp";
    }).bind("mouseenter", function () {
            canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
     });
    var img1_2=canvas.display.image({
        x:678,
        y:141,
        image:"image/main/qs2.png"
    });
    canvas.addChild(img1_2);
    img1_2.bind("click",function(){
        window.location.href="GN_getWater.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    //????????
    var img2=canvas.display.image({
        x:839,
        y:342,
        image:"image/main/5.png"
    });
    canvas.addChild(img2);
    img2.bind("click",function(){
        window.location.href="GN_JJ.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    //???????????
    var img21=img2.clone({
        x:1049,
        y:340
    });
    canvas.addChild(img21);
    img21.bind("click",function(){
        window.location.href="GN_JJ.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img22=img2.clone({
        x:1127,
        y:573
    });
    canvas.addChild(img22);
    img22.bind("click",function(){
        window.location.href="GN_JJ.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    //V?????????
    var img3=canvas.display.image({
        x:847,
        y:665,
        image:"image/main/6.png"
    });
    canvas.addChild(img3);
    img3.bind("click",function(){
        window.location.href="GN_VL.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });

    //?????????
    var img4=canvas.display.image({
        x:967,
        y:352,
        image:"image/main/hhj.png"
    });
    canvas.addChild(img4);
    img4.bind("click",function(){
        window.location.href="GN_HH.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img10=canvas.display.image({
        x:1179,
        y:381,
        image:"image/main/hhj2.png"
    });
    canvas.addChild(img10);
    img10.bind("click",function(){
        window.location.href="GN_HH.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    //???????
    var img5=canvas.display.image({
        x:810,
        y:529,
        image:"image/main/hx.png"
    });
    canvas.addChild(img5);
    img5.bind("click",function(){
        window.location.href="GN_HX.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");

    });
    //?????
    var img6=canvas.display.image({
        x:284,
        y:435,
        image:"image/main/qsc1.png"
    });
    canvas.addChild(img6);
    img6.bind("click",function(){
        window.location.href="GN_QingS_new.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img61=canvas.display.image({
        x:287,
        y:253,
        image:"image/main/qsc2.png"
    });
    canvas.addChild(img61);
    img61.bind("click",function(){
        window.location.href="GN_QingS.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img62=canvas.display.image({
        x:462,
        y:251,
        image:"image/main/qsc2.png"
    });
    canvas.addChild(img62);
    img62.bind("click",function(){
        window.location.href="GN_QingS.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img63=canvas.display.image({
        x:432,
        y:434,
        image:"image/main/qsc3.png"
    });
    canvas.addChild(img63);
    img63.bind("click",function(){
        window.location.href="GN_QingS_new.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });

    var img7=canvas.display.image({
        x:870,
        y:-7,
        image:"image/main/1.png"
    });
    canvas.addChild(img7);
    img7.bind("click",function(){
        window.location.href="#";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });
    var img8=canvas.display.image({
        x:379,
        y:652,
        image:"image/main/tc.png"
    });
    canvas.addChild(img8);
    img8.bind("click",function(){
        window.location.href="GN_TC01.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });

    var img8_1=canvas.display.image({
        x:488,
        y:652,
        image:"image/main/tc.png"
    });
    canvas.addChild(img8_1);
    img8_1.bind("click",function(){
        window.location.href="GN_TC01.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });

    var img9=canvas.display.image({
        x:613,
        y:645,
        image:"image/main/cy.png"
    });
    canvas.addChild(img9);
    img9.bind("click",function(){
        window.location.href="GN_CY.jsp";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });

    var img10=canvas.display.image({
        x:623,
        y:465,
        image:"image/main/cyc.png"
    });
    canvas.addChild(img10);
    img10.bind("click",function(){
        window.location.href="#";
    }).bind("mouseenter", function () {
        canvas.mouse.cursor("pointer");
    }).bind("mouseleave", function () {
        canvas.mouse.cursor("default");
    });




//    var flag = 0;
//    var step = 5;
//    $("button#btn_start").click(function(){
//        if(flag==1){
//            flag=0;
//            $(this).text("开始演示");}
//        else{
//            flag=1;
//            $(this).text("暂停演示");}
//    });
//    $("#btn_fast").click(function(){
//        step += 5;
//    });
//    $("#btn_slow").click(function(){
//        step -= 5;
//    });
//    $("#btn_zero").click(function(){
//        step = 5;
//    });
//    $("#btn_reset").click(function(){
//        t=0;
//        flag=0;
//        step = 5;
//        $("#btn_start").text("开始演示");
//        document.cookie="time=0";
//    });
//    var strCookie =document.cookie;
//    //将多cookie切割为多个名/值对
//    var arrCookie=strCookie.split(";");
//    var t;
//    //遍历cookie数组，处理每个cookie对
//    for(var i=0;i<arrCookie.length;i++){
//        var arr=arrCookie[i].split("=");
//        //找到名称为time的cookie，并返回它的值
//        if("time"==arr[0]){
//            t = parseFloat(arr[1]);
//            break;
//        }
//    }
//    canvas.setLoop(function () {
////        var testCookie =document.cookie;
////        document.getElementById("test1").innerHTML="cookies:"+testCookie;
//        document.getElementById("SimTime").innerHTML="仿真时间: "+t+"秒";
//        document.getElementById("step").innerHTML="步长: "+step+"秒";
//
//        if(flag==1){
//            t+=step;
//        }
//        else{
//            t+=0;
//        }
//        var writeCookie="time="+t;
//        document.cookie=writeCookie;
//
//        canvas.redraw();
//    }).start();
});
