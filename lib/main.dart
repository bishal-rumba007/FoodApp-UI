import 'package:flutter/material.dart';
import 'package:food_app_ui/view/home_page.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}




