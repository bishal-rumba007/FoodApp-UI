final burgerData = [
  {
    'size': 'small',
    'imageUrl': 'https://img.freepik.com/premium-vector/delicious-burger-icon-food-beverages_22052-1.jpg',
  },
  {
    'size': 'medium',
    'imageUrl': 'https://thumbs.dreamstime.com/b/slice-pizza-icon-cartoon-style-isolated-vector-illustration-88454426.jpg',
  },
  {
    'size': 'large',
    'imageUrl': 'https://img.freepik.com/premium-vector/birthday-cake-icon-cartoon-design_161751-2438.jpg?w=2000',
  },
];


List<Food> foods = burgerData.map((e) => Food.fromJson(e)).toList();

class Food{
  final String size;
  final String imageUrl;

  Food({
    required this.size,
    required this.imageUrl
  });

  factory Food.fromJson(Map<String, dynamic> json){
    return Food(
        size: json['size'],
        imageUrl: json['imageUrl']
    );
  }
}
