import 'package:flutter/material.dart';


class PopularFoods extends StatelessWidget {
  const PopularFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
    );
  }
}
