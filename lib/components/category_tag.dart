import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/models/category.dart';

class CategoryTag extends StatelessWidget {
  final Category category;
  final void Function()? onTap;

  const CategoryTag({super.key, required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                height: 30,
                child: Image.asset("assets/icons/${category.icon}", color: Theme.of(context).colorScheme.inversePrimary,),
              ),
              SizedBox(width: 15),
              Text(category.name)
            ],
          ),
        ),
      ),
    );
  }
}
