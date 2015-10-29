oCanvas.domReady(function () {

	 var width_all=30,
     speed_SC=0.9,
     color_GD="#007fff",
     color_SC="#43d9f9";
 var canvas = oCanvas.create({
     canvas: "#canvas_hhj",
     background: "#ccc",
     fps: 50
 });
//绘制两个水池
 var SC01=createSC({
     parent:canvas,
     x:566,y:306,height:351,width:138,trail_flag:0,speed:speed_SC,color:color_SC
 });
 var SC02=createSC({
     parent:canvas,
     x:703,y:307,height:299,width:85,trail_flag:0,speed:speed_SC,color:color_SC
 });
//添加背景图片
 var bg = canvas.display.image({
     x: 0,
     y: 0,
     image: "image/hhj.png"
 }).add();
//绘制两条管道
 var GD01=createGD({
     parent:canvas,
     cells:[
         {x_cell: 322,y_cell: 628},
         {x_cell: 632, y_cell: 628},
         {x_cell: 630, y_cell: 526}
     ],
     GDwidth:width_all,
     color:color_GD
 });
 var GD02=createGD({
     parent:canvas,
     cells:[
         {x_cell: 785,y_cell: 587},
         {x_cell: 839, y_cell: 587},
         {x_cell: 901, y_cell: 629},
         {x_cell: 1042, y_cell: 629}
     ],
     GDwidth:width_all,
     color:color_GD
 });
//添加箭头
 var arrow_1 = canvas.display.sprite({
     x: 568,
     y: 495,
     image: "image/water-arrow/left_roll.png",
     generate: false,
     frames: [
         {x: 60, y: 0, w: 60, h: 60, d: 400},
         {x: 0, y: 0, w: 60, h: 60, d: 800}
     ]
 }).add();

 var arrow_2 = canvas.display.sprite({
     x: 632,
     y: 495,
     image: "image/water-arrow/right_roll.png",
     generate: false,
     frames: [
         {x: 60, y: 0, w: 60, h: 60, d: 400},
         {x: 0, y: 0, w: 60, h: 60, d: 800}
     ]
 }).add();
 var arrow_3=canvas.display.sprite({
     x: 686,
     y: 287,
     image: "image/water-arrow/right_roll.png",
     generate:false,
     frames: [
         {x:60,y:0,w:60,h:60,d:400},
         {x:0,y:0,w:60,h:60,d:800}

     ]
 }).scale(0.5,1).add();
//添加文字标注
 var txt1=canvas.display.text({
     x:650,
     y:10,
     origin: { x:"center", y: "top" },
     font: "bold 32px sans-serif",
     fill:"#337ab7",
     text:"混合井工艺展示纵剖图"
 }).add();
 var txt2=canvas.display.text({
     x:230,
     y:615,
     origin: { x:"center", y: "top" },
     font: "bold 25px sans-serif",
     fill:"#337ab7",
     text:"取水泵房来水"
 }).add();
 var txt3=canvas.display.text({
     x:1120,
     y:615,
     origin: { x:"center", y: "top" },
     font: "bold 25px sans-serif",
     fill:"#337ab7",
     text:"混合井出水"
 }).add();
//设置循环
 canvas.setLoop(function () {
     GD01.advance();
     GD02.advance();
     SC01.advance();
     SC02.advance();
     if(GD01.full==1){
         SC01.start=1;
         arrow_1.start();
         arrow_2.start();
     }
     if(SC01.full==1){
         SC02.start=1;
         arrow_3.start();
     }
     if(SC02.full==1){
         GD02.paused=1;
     }
     canvas.redraw();
 }).start();
//添加按钮函数

 $("#btn_start").click(function(){
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
 });
 $("#btn_upS").click(function(){
	 
 });
// $scope.speedUp = function () {
//     if ($scope.num < 4) {
//         $scope.num++;
//         $scope.waterSpeed = $scope.speed[$scope.num];
//         canvas.settings.fps += 10;
//         $scope.waterWarn = "暂无";
//     }
//     else {
//         $scope.waterWarn = "速度已最快"
//     }
//     canvas.redraw();
//     canvas.timeline.stop();
//     canvas.timeline.start();
// };
 $("#btn_downS").click(function(){
	 
 });
// $scope.speedDown = function () {
//     if ($scope.num > 0) {
//         $scope.num--;
//         $scope.waterSpeed = $scope.speed[$scope.num];
//         canvas.settings.fps -= 10;
//         $scope.waterWarn = "暂无";
//     }
//     else {
//         $scope.waterWarn = "速度已最慢";
//     }
//     canvas.redraw();
//     canvas.timeline.stop();
//     canvas.timeline.start();
// };
 $("#btn_reset").click(function(){
	 function reset(){

     }
     reset();
 });

});
