import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryPage extends StatelessWidget {
  List<Category> categories;

  CategoryPage(this.categories, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Text(categories[index].name);
        },
      ),
    );
  }
}
