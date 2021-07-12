// import for Colors
import 'package:flutter/material.dart';

// Class category woth its parameters
class Category {
  final String id;
  final String title;
  final Color color;
// category consractor
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
