import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PopularFoods extends StatelessWidget {
  PopularFoods({Key? key}) : super(key: key);

  final Color mainColor = Color(0xffD40909);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: Container(
        height: 28.h,
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              margin: EdgeInsets.only(top: 3.h),
              child: Container(
                height: 24.h,
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.8.w, vertical: 1.8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chipotley Cheesy Chicken',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Rs.100",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Chikcen Burger',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 4.5.w, right: 4.5.w),
              child: Container(
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 14.5.h,
                  width: double.infinity),
            ),
            Positioned(
                top: -1.8.h,
                left: 25.w,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                  height: 23.h,
                  width: 45.w,
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
