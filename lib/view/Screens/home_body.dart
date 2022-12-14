import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/view/detail_page.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../common widget/customDrawer.dart';
import '../../common widget/popular_food.dart';
import '../../model/food.dart';

class HomeBody extends StatelessWidget {
  final Color mainColor = Color(0xffD40909);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: customLeading(),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 8.w,
                color: mainColor,
              ),
              Text(
                ' Chicago IIL',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 1.h, right: 2.w),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(40)),
                child: IconButton(
                  onPressed: () {},
                  icon: Center(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 7.w,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 8.w, top: 0.8.h),
                height: 18,
                width: 18,
                child: Center(
                    child: Text(
                  '3',
                  style: TextStyle(fontSize: 10.sp, color: Colors.red),
                )),
              )
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Container(
              child: TextField(
                  controller: searchController,
                  onTap: () {
                    searchController.clear();
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.8.h),
                    hintText: 'Search our delicious burger',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 7.5.w,
                    ),
                  )),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
            child: Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                itemCount: foods.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final food = foods[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 3.w),
                    child: Card(
                      color: mainColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.network(food.imageUrl)),
                                  Text(
                                    food.foodName,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    //padding: EdgeInsets.only(right: 4),
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        shape: BoxShape.circle),
                                    height: 4.h,
                                    width: 6.w,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                            padding:
                                                EdgeInsets.only(left: 0.8.w),
                                            color: Colors.white,
                                            iconSize: 4.w,
                                            onPressed: () {
                                              Get.to(() => DetailPage(food),
                                                  transition:
                                                      Transition.leftToRight);
                                            },
                                            icon:
                                                Icon(Icons.arrow_forward_ios)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View all >',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: mainColor),
                )
              ],
            ),
          ),
          PopularFoods(),
          PopularFoods(),
          PopularFoods()
        ]),
      ),
    );
  }
}
