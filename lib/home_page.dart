import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/food.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int theIndex = 0;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.red,
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
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    height: 30,
                                    width: 30,
                                    child: IconButton(
                                        iconSize: 16,
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_forward_ios)),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Stack(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 220,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Chipotley Cheesy Chicken',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Text("Rs.100",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: double.infinity,
                                child: Text('Chikcen Burger',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 38, left: 18, right: 18),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 120,
                          width: double.infinity
                      ),
                    ),
                    Positioned(
                        top: -20,
                        left: 110,
                        child: Image.network("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png", height: 180, width: 200, fit: BoxFit.cover,))
                  ]
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  height: 230,
                  child: Stack(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Chipotley Cheesy Chicken',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Text("Rs.100",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: double.infinity,
                                child: Text('Chikcen Burger',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 38, left: 18, right: 18),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 120,
                          width: double.infinity
                      ),
                    ),
                    Positioned(
                        top: -20,
                        left: 110,
                        child: Image.network("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png", height: 180, width: 200, fit: BoxFit.cover,))
                  ]
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            theIndex = index;
          });
        },
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        currentIndex: theIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favourites'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting'
          ),
        ],
      ),
    );
  }
}
