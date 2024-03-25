import 'package:flutter/material.dart';
import 'package:homework_mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function()? onPressed;
  const CategoryCard(
      {super.key, required this.category, required this.onPressed});

  // Dışarıdan alınan kategori modeli rengi ve ismi ile bu kartta kullanılmalı.
  // onTap aksiyonu, dışardan aldığı fonksiyonu haberdar etmeli.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.7),
              category.color.withOpacity(0.3)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(16.0),
        child: Text(category.name),
      ),
    );
  }
}
