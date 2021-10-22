import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color color;
  final String title;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(this.title, style: Theme.of(context).textTheme.subtitle1,),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.topRight
          ),
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}
