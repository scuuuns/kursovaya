import 'package:flutter/material.dart';

class CastomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;

  const CastomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,horizontal: 50.0
        ),
        alignment: Alignment.center,
        child: Text(
          title,style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white)),
      ), 
      iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton(icon: Icon(Icons.favorite), onPressed: () {
        Navigator.pushNamed(context, '/wishlist');
      } )],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(50.0);
}