import 'package:flutter/material.dart';
import 'package:food_app_ui/common%20widget/listTiles.dart';
import 'package:sizer/sizer.dart';

import '../../common widget/customDrawer.dart';

class Account extends StatelessWidget {
  final searchController = TextEditingController();
  final Color mainColor = Color(0xffD40909);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: customLeading(),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 8.w,
                color: mainColor,
              ),
              Text(
                'Account',
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
                  ),
                ),
              )
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Container(
              height: 22.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: mainColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20.w,
                      ),
                    ),
                    Text(
                      'Sobhakar Poudel',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '98-xxxxxx | test@gmail.com',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.blueGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 1.4.h),
          children: [
            Container(
              padding: EdgeInsets.all(2.w),
              height: 33.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customListTile(title: 'Profile', leadingIcon: Icons.person),
                  customListTile(
                    title: 'Saved Address',
                    leadingIcon: Icons.star,
                  ),
                  customListTile(
                    title: 'Notification',
                    leadingIcon: Icons.notifications,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              height: 25.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OFFERS',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  customListTile(
                    title: 'Promos',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Get Discounts',
                    leadingIcon: Icons.star,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              height: 25.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customListTile(
                    title: 'Themes',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Privacy',
                    leadingIcon: Icons.privacy_tip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
