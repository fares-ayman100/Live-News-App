import 'package:flutter/material.dart';
import 'package:live_news/Models/Category_Model.dart';
import 'package:live_news/Widget/Category_Card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  List<CategoryModel> cards = [
    const CategoryModel(Image: 'assets/Business.jpg', categoryName: 'Business'),
    const CategoryModel(Image: 'assets/Sports.jpg', categoryName: 'Sports'),
    const CategoryModel(Image: 'assets/Science.jpg', categoryName: 'Science'),
    const CategoryModel(Image: 'assets/Health.jpg', categoryName: 'Health'),
    const CategoryModel(Image: 'assets/Technology.jpg', categoryName: 'Technology'),
    const CategoryModel(Image: 'assets/Entertainment.jpg', categoryName: 'Entertainment'),
    const CategoryModel(Image: 'assets/General.jpg', categoryName: 'Top'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CategoryCard(Category: cards[index]);
        },
      ),
    );
  }
}
