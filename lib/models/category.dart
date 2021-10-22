import 'package:flutter/material.dart';

class Category {
  int id = 0;
  String title;
  Color color;
  int increment = 0;

  Category(this.title, this.color) {
    this.id = ++increment;
    this.title = title;
    this.color = color;
  }
}
