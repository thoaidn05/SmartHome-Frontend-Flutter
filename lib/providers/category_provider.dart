import 'package:flutter/cupertino.dart';

import '../models/category.dart';

class CategoryProvider extends ChangeNotifier {
  final List<Category> _categories = [
    Category(id: 1, icon: "light-bulb.png", name: "Light"),
    Category(id: 2, icon: "fan-tan.png", name: "Fan"),
    Category(id: 3, icon: "curtain.png", name: "Curtain"),
    Category(id: 4, icon: "switch.png", name: "Switch"),
  ];

  List<Category> get categories => _categories;

  void addGroup(Category category) {
    _categories.add(category);
    notifyListeners();
  }

  void removeGroup(Category category) {
    _categories.remove(category);
    notifyListeners();
  }
}
