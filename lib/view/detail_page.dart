import 'package:flutter/material.dart';
import 'package:food_app_ui/model/food.dart';
import 'package:get/get.dart';


class DetailPage extends StatefulWidget {
  final Food foodData;
  DetailPage(this.foodData);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  int itemCount = 0;

  void addItem(){
    setState(() {
      itemCount++;
    });
  }

  void removeItem(){
    setState(() {
      if(itemCount > 0){
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.only(left: 8),
                child: IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black,)
                ),
              ),
            ),
            actions: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10,
                child: Container(
                  child: IconButton(
                    iconSize: 30,
                      onPressed: (){},
                      icon: Icon(Icons.favorite_outline, color: Color(0xffD40909),)
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
              padding: const EdgeInsets.all(8.0),
              child: Text('Chipotley Cheesy Chicken',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('A signature flame-grilled chicken patty topped with smoked beef',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              child: Stack(
                children: [
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250), bottomRight: Radius.circular(250))
                    ),
                    child: Container(
                      height: 360,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 120,
                    child: Container(
                      height: 240,
                        width: 200,
                        child: Image(image: NetworkImage(widget.foodData.imageUrl,)
                        )
                    ),
                  ),

                  Positioned(
                      top: 280,
                      left: 30,
                      child: _cardButton(sizeName: 'S')
                  ),
                  Positioned(
                      top: 340,
                      left: 180,
                      child: _cardButton(sizeName: 'M')
                  ),
                  Positioned(
                    right: 30,
                      top: 280,
                      child: _cardButton(sizeName: 'L')
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    addItem();
                  },
                  child: Icon(Icons.add, color: Colors.black,),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE96D6D),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                  ),
                ),
                SizedBox(width: 5,),
                Text('$itemCount',
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
                SizedBox(width: 5,),
                ElevatedButton(
                  onPressed: () {
                    removeItem();
                  },
                  child: Icon(Icons.remove, color: Colors.black,),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE96D6D),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),  // the padding is here because i am pushing the text widget 35 from right so that it fits in
                          child: Text('Price',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Text('Rs. 140',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD40909),
                          minimumSize: Size(80, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
                          )
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 30,),
                            SizedBox(width: 10,),
                            Text('Go to Cart',
                              style: TextStyle(
                                  fontSize: 16,
                                color: Colors.white
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}

class _cardButton extends StatelessWidget {
  final String sizeName;
  _cardButton({required this.sizeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(20, 20)
        ),
          onPressed: (){},
          child: Text(sizeName,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
          )
      ),
    );
  }
}
