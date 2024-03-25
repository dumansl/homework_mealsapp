import 'package:flutter/material.dart';
import 'package:homework_mealsapp/data/category_data.dart';
import 'package:homework_mealsapp/models/category.dart';
import 'package:homework_mealsapp/widgets/category_card.dart';

// Global State - Global State Management
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = categories;

    return Scaffold(
      appBar: AppBar(title: const Text("Kategoriler")),
      // Inkwell, GestureDetector
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 5,
            childAspectRatio: 4 / 2),
        children: categoryList
            .map((e) => CategoryCard(
                  onPressed: () {
                    debugPrint(e.id);
                  },
                  category: e,
                ))
            .toList(),
      ),
    );
  }
}
