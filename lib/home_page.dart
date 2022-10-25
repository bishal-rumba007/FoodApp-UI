import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/food.dart';

class HomePage extends StatelessWidget {

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black, size: 30,),
        title: Text('Chicago IIL', style: TextStyle(color: Colors.black),),
        flexibleSpace: Container(
          margin: EdgeInsets.only(right: 130, top: 63),
          child: Icon(Icons.location_on, size: 30, color: Colors.red,),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, right: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: IconButton(
                    onPressed: (){},
                    icon: Center(child: Icon(CupertinoIcons.bag, size: 28,))
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.only(left: 32, top: 4),
                height: 18,
                width: 18,
                child: Center(child: Text('3', style: TextStyle(color: Colors.red),)),
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
                  onTap: (){
                    searchController.clear();
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    hintText: 'Search our delicious burger',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    prefixIcon: Icon(Icons.search_rounded, size: 30,),
                  )
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.network(food.imageUrl)
                                  ),
                                  Text(food.foodName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    height: 30,
                                    width: 30,
                                    child: IconButton(
                                        iconSize: 16,
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios)
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
      ),
    );
  }
}
