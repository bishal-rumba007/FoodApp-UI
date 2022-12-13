import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsEHlHUgnnudTFCq9S7wKmjW58hCFwYT6wig&usqp=CAU'), fit: BoxFit.cover)
            ), child: null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('username', style: TextStyle(fontSize: 12.sp),),
          ),
        ],
      ),
    );
  }
}


class customLeading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 8.5.w,
          ),
        );
      },
    );
  }
}

