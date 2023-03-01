import 'dart:async';
import 'dart:math' as math;
import 'package:animation_project/Home_Screen/Home_View.dart';
import 'package:animation_project/Spinner_Screen/Spinner_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Splash_Screen2 extends StatefulWidget {
  const Splash_Screen2({Key? key}) : super(key: key);

  @override
  _Splash_Screen2State createState() => _Splash_Screen2State();
}

class _Splash_Screen2State extends State<Splash_Screen2> with TickerProviderStateMixin{
  bool rotate = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )
    ..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  );


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void chnageValue(){
    Timer(Duration(seconds: 5), () {
      setState(() {
        rotate = true;
      });
    });

  }
  final timer = Timer;
  int speed = 0;
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(speed <=15){
        speed++;
        setState(() {
          print("this si speed value ${speed.toString()}");
        });
      }else{
        timer..cancel();
      }

    });
    chnageValue();
    Timer(Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_View()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1,
          // MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF12C2E9),
                Color(0xFFC471ED),
                Color(0xFFF64F59),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: 6.h),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: AnimatedBuilder(
                    animation: _controller,
                    child: Column(
                      children: [
                        Image.asset('assets/images/redheart.png'),
                      ],
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child);}
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 90.w,top: 0.h),
                child: AnimatedBuilder(
                    animation: _controller,
                    child: Column(
                      children: [
                        Image.asset('assets/images/Group (1).png'),
                      ],
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child);}
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w,top: 2.h),
                    child: AnimatedBuilder(
                        animation: _controller,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Group (4).png'),
                          ],
                        ),
                        builder: (BuildContext context, Widget? child){
                          return Transform.rotate(
                              angle: _controller.value * 2.0 * math.pi,
                              child: child);}
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 232.w,top: 10.h),
                    child: AnimatedBuilder(
                        animation: _controller,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Group (4).png'),
                          ],
                        ),
                        builder: (BuildContext context, Widget? child){
                          return Transform.rotate(
                              angle: _controller.value * 2.0 * math.pi,
                              child: child);}
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 200.w,top: 9.h),
                child: AnimatedBuilder(
                    animation: _controller,
                    child: Column(
                      children: [
                        Image.asset('assets/images/redheart.png'),
                      ],
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child);}
                ),
              ),
              rotate == true ?  Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100.w,top: 110.h),
                    child: Text('Spinzie',
                      style: TextStyle(fontWeight: FontWeight.w800,fontSize: 48.sp,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: AnimatedBuilder(
                        animation: _controller,
                        child:  Container(
                          height: MediaQuery.of(context).size.height*.4,
                          width: 390,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child: Image.asset('assets/images/User6.png'),
                                    ),
                                  ),
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child: Image.asset('assets/images/User4.png'),
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Image.asset('assets/images/User5.png'),
                                    ),
                                  ),
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Image.asset('assets/images/User2.png'),
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Image.asset('assets/images/User1.png'),
                                    ),
                                  ),
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Image.asset('assets/images/User7.png'),
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset('assets/images/User3.png')),
                                    ),
                                  ),
                                  SizeTransition(
                                    sizeFactor: _animation,
                                    axis: Axis.horizontal,
                                    axisAlignment: 2,
                                    child: Center(
                                      child:  Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset('assets/images/User3.png')),
                                    ),
                                  )

                                ],
                              ),
                            ],
                          ),
                        ),

                        builder: (BuildContext context, Widget? child){
                          return Transform.rotate(
                              angle: _controller.value * 1 * math.pi,
                              child: child);
                        }
                    ),
                  ),
                ],
              )
                  :Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100.w,top: 110.h),
                    child: Text('Spinzie',
                      style: TextStyle(fontWeight: FontWeight.w800,fontSize: 48.sp,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 270.h,
                      width: 390,
                      // color: Colors.black87,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child: Image.asset('assets/images/User6.png'),
                                ),
                              ),
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child: Image.asset('assets/images/User4.png'),
                                ),
                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Image.asset('assets/images/User5.png'),
                                ),
                              ),
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Image.asset('assets/images/User2.png'),
                                ),
                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Image.asset('assets/images/User1.png'),
                                ),
                              ),
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Image.asset('assets/images/User7.png'),
                                ),
                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset('assets/images/User3.png')),
                                ),
                              ),
                              SizeTransition(
                                sizeFactor: _animation,
                                axis: Axis.vertical,
                                axisAlignment: -5,
                                child: Center(
                                  child:  Container(
                                    height: 70,
                                    width: 70,
                                    child:  Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset('assets/images/User3.png')),
                                  ),
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(children:  [
                Padding(
                  padding: EdgeInsets.only(left: 30.w,top: 0.h),
                  child: AnimatedBuilder(
                      animation: _controller,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group (2).png'),
                        ],
                      ),
                      builder: (BuildContext context, Widget? child){
                        return Transform.rotate(
                            angle: _controller.value * 2.0 * math.pi,
                            child: child);}
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200.w),
                  child: AnimatedBuilder(
                      animation: _controller,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group (4).png'),
                        ],
                      ),
                      builder: (BuildContext context, Widget? child){
                        return Transform.rotate(
                            angle: _controller.value * 2.0 * math.pi,
                            child: child);}
                  ),
                ),
              ],),
              Padding(
                padding: EdgeInsets.only(left: 162.w,top: 50.h),
                child: AnimatedBuilder(
                    animation: _controller,
                    child: Column(
                      children: [
                        Image.asset('assets/images/Group (3).png'),
                      ],
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child);}
                ),
              ),
              Row(children:  [
                Padding(
                  padding: EdgeInsets.only(left: 23.w),
                  child: AnimatedBuilder(
                      animation: _controller,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group (4).png'),
                        ],
                      ),
                      builder: (BuildContext context, Widget? child){
                        return Transform.rotate(
                            angle: _controller.value * 2.0 * math.pi,
                            child: child);}
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130.w),
                  child: AnimatedBuilder(
                      animation: _controller,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group (3).png'),
                        ],
                      ),
                      builder: (BuildContext context, Widget? child){
                        return Transform.rotate(
                            angle: _controller.value * 2.0 * math.pi,
                            child: child);}
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 95.w,top: 10.h),
                  child: AnimatedBuilder(
                      animation: _controller,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group (4).png'),
                        ],
                      ),
                      builder: (BuildContext context, Widget? child){
                        return Transform.rotate(
                            angle: _controller.value * 2.0 * math.pi,
                            child: child);}
                  ),
                ),
              ],),


            ],
          ),
        ),
      ),
    );
  }
}
