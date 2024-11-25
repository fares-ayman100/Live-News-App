import 'package:flutter/material.dart';
import 'package:live_news/Widget/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            Category: category,
          ),
        ],
      ),
    );
  }
}
