import 'package:flutter/material.dart';
import 'package:food_app_ui/model/food.dart';
import 'package:get/get.dart';


class DetailPage extends StatelessWidget {
  final Food foodData;
  DetailPage(this.foodData);

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
                      icon: Icon(Icons.favorite_outline, color: Colors.red,)
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

            Container(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250), bottomRight: Radius.circular(250))
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250), bottomRight: Radius.circular(250))
                        ),
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 120,
                    child: Container(
                      height: 240,
                        width: 200,
                        child: Image(image: NetworkImage(foodData.imageUrl,)
                        )
                    ),
                  ),

                  Positioned(
                      top: 230,
                      left: 30,
                      child: _cardButton(sizeName: 'S')
                  ),
                  Positioned(
                      top: 290,
                      left: 180,
                      child: _cardButton(sizeName: 'M')
                  ),
                  Positioned(
                    right: 30,
                      top: 230,
                      child: _cardButton(sizeName: 'L')
                  ),

                ],
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
