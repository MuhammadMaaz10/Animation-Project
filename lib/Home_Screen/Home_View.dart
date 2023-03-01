import 'package:animation_project/Spinner_Screen/Spinner_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_View extends StatefulWidget {
  // final CarouselController _controller = CarouselController();

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 56,),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text('Dating',
                  style: TextStyle(
                    color: Colors.black,
                      fontSize: 32.sp,
                  fontWeight: FontWeight.w800),),
              ),
              trailing: Image.asset('assets/images/Story.png'),
            ),
            FlutterCarousel(
              options: CarouselOptions(
                indicatorMargin: 10,
                height: 220.h,
                showIndicator: true,
                slideIndicator: CircularWaveSlideIndicator(),
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Stack(children: [
                        Positioned(
                            right: 0.w,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40.r),
                                    topLeft: Radius.elliptical(50.r, 100.r),
                                    bottomLeft: Radius.elliptical(130.r, 120.r)
                                ),
                                child: Image.asset('assets/images/2.png'))),
                        Container(
                          height: 190,
                          width: 350.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30.r)),
                            color: Colors.deepPurple.withOpacity(0.5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0,top: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('How to Move Post The',
                                        style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),),
                                      Image.asset('assets/images/Group (4).png',color: Colors.pinkAccent.withOpacity(0.3),)
                                    ],
                                  ),
                                ),
                                Text('"TALKING" ',
                                  style: TextStyle(color: Colors.white,fontSize: 25.sp,fontWeight: FontWeight.w900),),
                                Text('   PHASE ',
                                  style: TextStyle(color: Colors.white,fontSize: 25.sp,fontWeight: FontWeight.w900),),
                                SizedBox(height: 15.h,),
                                Text('Faster When Dating Online',
                                  style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),),

                              ],
                            ),
                          ),
                        ),
                      ]),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/1.png'),fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20.r)),
                      ),
                    Positioned(
                      top: 10.h,
                      left: 118.w,
                      child: Container(
                        height: 36.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.brown,
                              Colors.brown,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(child: Image.asset('assets/images/Vector.png'))
                        ,),
                    ),
                   Positioned(
                     top: 145.h,
                     child: Container(
                       height: 50.h,
                       width: 164.w,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [
                             Color(0xFFED710E).withOpacity(1.0),
                             Color(0xFFF34259).withOpacity(0.3),
                           ],
                           begin: Alignment.bottomCenter,
                           end: Alignment.topCenter,
                         ),
                       ),
                     ),
                   ),
                    Padding(
                      padding:  EdgeInsets.only(top: 160.h,left: 40.w),
                      child: Text('First Contact',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.h,
                            fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Spinner_view()));
                  },
                  child: Stack(
                    children: [
                        Container(
                        height: 190.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/images/2.png'),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20)),
                        ),
                      Positioned(
                        top: 10.h,
                        left: 118.w,
                        child: Container(
                          height: 36.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            gradient: LinearGradient(
                              colors: [
                                Colors.brown,
                                Colors.brown,
                                // Color(0xFFFFFFFF4D),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(child: Image.asset('assets/images/Vector.png'))
                          ,),
                      ),
                      Positioned(
                        top: 145.h,
                        child: Container(
                          height: 50.h,
                          width: 164.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF66DAF7),
                                Color(0xFF0C7BFF).withOpacity(0.3),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 160.h,left: 40.w),
                        child: Text('First Date',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),),
                      ),
                      ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/3.png'),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 118.w,
                      child: Container(
                        height: 36.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.brown,
                              Colors.brown,
                              // Color(0xFFFFFFFF4D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(child: Image.asset('assets/images/Vector.png'))
                        ,),
                    ),
                    Positioned(
                      top: 145.h,
                      child: Container(
                        height: 50.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE8DB43).withOpacity(0.7),
                              Color(0xFFD6C936).withOpacity(0.7),
                              Color(0xFF00D2CC).withOpacity(0.7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 160.h,left: 40.w),
                      child: Text('Second Date',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/images/4.png'),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 118.w,
                      child: Container(
                        height: 36.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.brown,
                              Colors.brown,
                              // Color(0xFFFFFFFF4D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(child: Image.asset('assets/images/Vector.png'))
                        ,),
                    ),
                    Positioned(
                      top: 145.h,
                      child: Container(
                        height: 50.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF12C2E9).withOpacity(0.7),
                              Color(0xFFF64F59).withOpacity(0.7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 160.h,left: 40.w),
                      child: Text('Third Date',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/5.png'),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 118.w,
                      child: Container(
                        height: 36.h,
                      width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.brown,
                              Colors.brown,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(child: Image.asset('assets/images/Vector.png'))
                        ,),
                    ),
                    Positioned(
                      top: 145.h,
                      child: Container(
                        height: 50.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF6650F8).withOpacity(0.7),
                              Color(0xFFF4157B).withOpacity(0.7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 155.h,left: 40.w),
                      child: Text('Engagement',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 190.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/images/6.png'),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 118.w,
                      child: Container(
                        height: 36.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          gradient: LinearGradient(
                            colors: [
                              Colors.brown,
                              Colors.brown,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(child: Image.asset('assets/images/Vector.png'))
                        ,),
                    ),
                    Positioned(
                      top: 145.h,
                      child: Container(
                        height: 50.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFED710E).withOpacity(0.7),
                              Color(0xFFF34259).withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 155.h,left: 50.w),
                      child: Text('Marriage',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h,),

          ],
        ),
      ),
    );
  }
}
