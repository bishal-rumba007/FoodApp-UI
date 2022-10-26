import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/view/detail_page.dart';
import 'package:get/get.dart';

import '../../common widget/popular_food.dart';
import '../../model/food.dart';


class HomeBody extends StatelessWidget {

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'Chicago IIL',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          margin: EdgeInsets.only(right: 130, top: 63),
          child: Icon(
            Icons.location_on,
            size: 30,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, right: 10),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(40)),
                child: IconButton(
                    onPressed: () {},
                    icon: Center(
                        child: Icon(
                          CupertinoIcons.bag,
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
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: TextField(
                  controller: searchController,
                  onTap: () {
                    searchController.clear();
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    hintText: 'Search our delicious burger',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                  )),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: foods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final food = foods[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Card(
                        color: Colors.red,
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
                                        height: 70,
                                        width: 70,
                                        child: Image.network(food.imageUrl)),
                                    Text(
                                      food.foodName,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      //padding: EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                          color: Colors.black87,
                                          shape: BoxShape.circle
                                      ),
                                      height: 24,
                                      width: 24,
                                      child: Stack(
                                        children: [
                                          IconButton(
                                              padding: EdgeInsets.only(left: 2),
                                              color: Colors.white,
                                              iconSize: 14,
                                              onPressed: () {
                                                Get.to(() => DetailPage());
                                              },
                                              icon: Icon(Icons.arrow_forward_ios)
                                          ),
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
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View all >',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
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

