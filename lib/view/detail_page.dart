import 'package:flutter/material.dart';
import 'package:food_app_ui/model/food.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DetailPage extends StatefulWidget {
  final Food foodData;

  DetailPage(this.foodData);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int itemCount = 1;

  void addItem() {
    setState(() {
      itemCount++;
    });
  }

  void removeItem() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              child: Container(
                padding: EdgeInsets.only(left: 2.w),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ),
            ),
            actions: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: Container(
                  child: IconButton(
                    iconSize: 8.w,
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Color(0xffD40909),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Text(
              'Chipotley Cheesy Chicken',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
            child: Text(
              'A signature flame-grilled chicken patty topped with smoked beef',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 50.h,
            child: Stack(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250),
                          bottomRight: Radius.circular(250))),
                  child: Container(
                    height: 45.h,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 6.h,
                  left: 20.w,
                  child: Container(
                    height: 32.h,
                    width: 60.w,
                    child: Image(
                      image: NetworkImage(
                        widget.foodData.imageUrl,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 33.h,
                  left: 8.w,
                  child: InkWell(
                    onTap: () {},
                    child: _cardButton(sizeName: 'S'),
                  ),
                ),
                Positioned(
                  top: 41.h,
                  left: 43.w,
                  child: _cardButton(sizeName: 'M'),
                ),
                Positioned(
                  right: 8.w,
                  top: 33.h,
                  child: _cardButton(sizeName: 'L'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  addItem();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffE96D6D),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(1.w),
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                '$itemCount',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              ElevatedButton(
                onPressed: () {
                  removeItem();
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffE96D6D),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(1.w),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Container(
              height: 7.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        // the padding is here because i am pushing the text widget 35 from right so that it fits in
                        child: Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        'Rs. 140',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD40909),
                      minimumSize: Size(10.w, 7.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 8.w,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Go to Cart',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class _cardButton extends StatelessWidget {
  final String sizeName;

  _cardButton({required this.sizeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6,
      child: TextButton(
        style: TextButton.styleFrom(minimumSize: Size(20, 20)),
        onPressed: () {},
        child: Text(
          sizeName,
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
