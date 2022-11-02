final burgerData = [
  {
    'size': 'small',
    'imageUrl': 'https://d2j6dbq0eux0bg.cloudfront.net/images/14450072/1156025882.jpg',
  },
  {
    'size': 'medium',
    'imageUrl': 'https://www.pngkey.com/png/detail/90-909691_healthy-burger-png-burger-transparent-background.png',
  },
  {
    'size': 'large',
    'imageUrl': 'https://d2j6dbq0eux0bg.cloudfront.net/images/14450072/1156014693.jpg',
  },
];


List<Burger> burgers = burgerData.map((e) => Burger.fromJson(e)).toList();

class Burger{
  final String size;
  final String imageUrl;

  Burger({
    required this.size,
    required this.imageUrl
  });

  factory Burger.fromJson(Map<String, dynamic> json){
    return Burger(
        size: json['size'],
        imageUrl: json['imageUrl']
    );
  }
}
