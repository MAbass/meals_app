import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer_widget.dart';

class FilterScreen extends StatelessWidget {
  static final String routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters')),
      drawer: MainDrawer(),
      body: Center(child: Text("Filter page")),
    );
  }
}
