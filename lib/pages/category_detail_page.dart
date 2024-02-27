import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryDetailPage extends StatefulWidget {
  final Category category;

  const CategoryDetailPage(this.category, {super.key});

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(widget.category.name),
        ),
      ),
    );
  }
}
