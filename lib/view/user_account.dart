import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Account extends StatelessWidget {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'title',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          margin: EdgeInsets.only(right: 63, top: 63),
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
          preferredSize: Size.fromHeight(200),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.person, color: Colors.white, size: 70,),
                    ),
                    Text('Sobhakar Poudel',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500
                        )
                    ),
                    Text('98-xxxxxx | test@gmail.com',
                        style: TextStyle(
                          letterSpacing: 1,
                            color: Colors.blueGrey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                    )
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text('Account',
                  style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  )
              ),
            ],
          ),
        ),
      ),


    );
  }
}
