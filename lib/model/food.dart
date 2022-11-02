final foodData = [
  {
    'foodName': 'Burger',
    'imageUrl': 'https://img.freepik.com/premium-vector/delicious-burger-icon-food-beverages_22052-1.jpg',
    'size': [

    ]
  },
  {
    'foodName': 'Pizza',
    'imageUrl': 'https://thumbs.dreamstime.com/b/slice-pizza-icon-cartoon-style-isolated-vector-illustration-88454426.jpg',
  },
  {
    'foodName': 'Cake',
    'imageUrl': 'https://img.freepik.com/premium-vector/birthday-cake-icon-cartoon-design_161751-2438.jpg?w=2000',
  },
  {
    'foodName': 'Hot Dog',
    'imageUrl': 'https://i.pinimg.com/474x/0a/94/3a/0a943a991cfbf792a239c255760807bf.jpg',
  },
  {
    'foodName': 'Fries',
    'imageUrl': 'https://cdn3.vectorstock.com/i/1000x1000/89/57/french-fries-icon-on-white-background-for-graphic-vector-23388957.jpg',
  },
];


List<Food> foods = foodData.map((e) => Food.fromJson(e)).toList();

class Food{
  final String foodName;
  final String imageUrl;

  Food({
    required this.foodName,
    required this.imageUrl
  });

  factory Food.fromJson(Map<String, dynamic> json){
    return Food(
        foodName: json['foodName'],
        imageUrl: json['imageUrl']
    );
  }
}
