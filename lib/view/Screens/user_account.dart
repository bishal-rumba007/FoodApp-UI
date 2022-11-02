import 'package:flutter/material.dart';
import 'package:food_app_ui/common%20widget/listTiles.dart';

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
        title: Text(
          'title',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          margin: EdgeInsets.only(right: 63, top: 63),
          child: Icon(
            Icons.location_on,
            size: 30,
            color: mainColor,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, right: 10),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(40)),
                child: IconButton(
                    onPressed: () {},
                    icon: Center(
                        child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 28,
                    ))),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 32, top: 4),
                height: 18,
                width: 18,
                child: Center(
                    child: Text(
                  '3',
                  style: TextStyle(color: mainColor),
                )),
              )
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: mainColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                    Text('Sobhakar Poudel',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                    Text('98-xxxxxx | test@gmail.com',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.blueGrey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600))
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
          padding: EdgeInsets.symmetric(vertical: 10),
          children: [
            Container(
                padding: EdgeInsets.all(10),
                height: 220,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ACCOUNT',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    customListTile(title: 'Profile', leadingIcon: Icons.person),
                    customListTile(title: 'Saved Address', leadingIcon: Icons.star),
                    customListTile(title: 'Notification', leadingIcon: Icons.notifications),
                  ],
                )
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.all(10),
                height: 160,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OFFERS',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    customListTile(title: 'Promos', leadingIcon: Icons.person),
                    customListTile(title: 'Get Discounts', leadingIcon: Icons.star),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: 160,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SETTINGS',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    customListTile(title: 'Themes', leadingIcon: Icons.person),
                    customListTile(title: 'Privacy', leadingIcon: Icons.privacy_tip),
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
