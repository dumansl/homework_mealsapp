import 'package:flutter/material.dart';
import 'package:homework_mealsapp/models/category.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final categories = [
  Category(id: uuid.v4(), name: "Başlangıçlar", color: Colors.purple),
  Category(id: uuid.v4(), name: "Ara Sıcaklar", color: Colors.brown),
  Category(id: uuid.v4(), name: "Ana Yemekler", color: Colors.deepOrange),
  Category(id: uuid.v4(), name: "Aperatif", color: Colors.green),
  Category(id: uuid.v4(), name: "İçecekler", color: Colors.indigo),
];
