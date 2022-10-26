import 'package:flutter/material.dart';


class customListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  customListTile({required this.title, required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.black12
              )
          )
      ),
      child: ListTile(
        leading: Icon(leadingIcon, color: Colors.blueGrey,),
        title: Text(title,
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        horizontalTitleGap: 0,
      ),
    );
  }
}
