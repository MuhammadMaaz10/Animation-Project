import 'dart:async';
import 'dart:math' as math;
import 'package:animation_project/Home_Screen/Home_View.dart';
import 'package:animation_project/Spinner_Screen/Spinner_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this)..repeat();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>
          Home_View()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [
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
                AnimatedBuilder(
                    animation: _controller,
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset('assets/images/redheart.png'),
                        ),
                      ],
                    ),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                          angle: _controller.value * 2.0 * math.pi,
                          child: child);}
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
                Stack(
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
                          child: Container(
                            height: 270.h,
                            width: 370,
                            // color: Colors.black87,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    // SizedBox(width: 5,),
                                    Image.asset('assets/images/User6.png'),
                                    Image.asset('assets/images/User4.png'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/User5.png'),
                                    Image.asset('assets/images/User2.png'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/User1.png'),
                                    Image.asset('assets/images/User7.png'),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset('assets/images/User3.png')),
                                    Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset('assets/images/User3.png')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          builder: (BuildContext context, Widget? child){
                            return Transform.rotate(
                                angle: _controller.value * 2.0 * math.pi,
                                child: child);
                          }
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
                    padding: EdgeInsets.only(left: 100.w,top: 10.h),
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
      ),
    );
  }
}
