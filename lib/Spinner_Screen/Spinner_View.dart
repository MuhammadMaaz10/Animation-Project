import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spinner_view extends StatefulWidget {
  const Spinner_view({Key? key}) : super(key: key);

  @override
  State<Spinner_view> createState() => _Spinner_viewState();
}


class _Spinner_viewState extends State<Spinner_view> {

  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color:  Color(0xFFE2E2E2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: 50.h),
              ListTile(
                leading: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back,color: Colors.black,)),
                title: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 160.w),
                      child: Image.asset('assets/images/redheart.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w,top: 8.h),
                      child: Text('First Date',
                        style: TextStyle(color: Colors.black,fontSize: 32.sp,fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
                trailing: Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: Color(0xFFFFFFFF)
                  ),
                  child: Image.asset('assets/images/Brush.png'),
                ),
              ),
              Image.asset('assets/images/Pinkheart.png',color: Colors.pink,),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      height: 110.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30.r)),
                        gradient: LinearGradient(
                          colors: const [
                            Color(0xFF12C2E9),
                            Color(0xFFC471ED),
                            Color(0xFFF64F59),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                      ),
                      child: Center(
                        child: Text("What's your favorite\n           color?",
                          style: TextStyle(
                            color:  Color(0xFFE2E2E2),
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w800
                          ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: Image.asset('assets/images/Pinkheart.png',color: Colors.white,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 85.h),
                    child: Row(children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 50.w),
                        child: Image.asset('assets/images/Pinkheart.png',color: Colors.white,),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 220.w),
                        child: Image.asset('assets/images/Pinkheart.png',color: Colors.white,),
                      ),
                    ],),
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.only(left: 330.w),
                child: Image.asset('assets/images/Pinkheart.png',color: Colors.pink,),
              ),
              Expanded(
                child: FortuneWheel(
                  indicators:  <FortuneIndicator>[
                    FortuneIndicator(
                      alignment: Alignment.center,
                      child: Container(
                          child: Image.asset('assets/images/indicator.png',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width*.2,
                            height: MediaQuery.of(context).size.height*.1,)),
                    ),
                  ],
                  onFling: (){ setState(() {
                    selected.add(1
                    );
                  });},
                  selected: selected.stream,
                  items:    [
                    FortuneItem(
                      child: Text('Music',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('Color',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color:
                        Color(0xFFC471ED),
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('Place',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Colors.white,
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('People',
                        style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Color(0xFFC471ED),
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('Sports',
                        style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Colors.white,
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('Movie',
                        style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Color(0xFFC471ED),
                        // <-- custom circle slice fill color
                        borderColor: Colors.pinkAccent,
                        // <-- custom circle slice stroke color
                        borderWidth: 3.w, // <-- custom circle slice stroke width
                      ),
                    ),
                    FortuneItem(
                      child: Text('Future',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Colors.white,
                        borderColor: Colors.pinkAccent,
                        borderWidth: 3.w,
                      ),
                    ),
                    FortuneItem(
                      child: Text('Goals',
                        style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w800),),
                      style: FortuneItemStyle(
                        color: Color(0xFFC471ED),
                        // <-- custom circle slice fill color
                        borderColor: Colors.pinkAccent,
                        // <-- custom circle slice stroke color
                        borderWidth: 3.w, // <-- custom circle slice stroke width
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h,),
              GestureDetector(
                onTap: (){ setState(() {
                  selected.add(1
                  );
                });},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 96.w),
                  child: Container(
                    height: 50.h,
                    width: 198.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF12C2E9),
                          Color(0xFFC471ED),
                          Color(0xFFF64F59),
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                    ),
                    child: Center(
                      child: Text("Spin",
                        style: TextStyle(
                            color:  Color(0xFFE2E2E2),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800
                        ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Center(
                child: Text('Skip',style: TextStyle(
                    color:  Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700
                ),),
              ),
              Image.asset('assets/images/Pinkheart.png',color: Colors.pink,),

            ],
          ),
        ),
      ),
    );
  }
}

