import 'package:flutter/material.dart';
import 'package:live_news/Models/Category_Model.dart';
import 'package:live_news/Views/CategoryView.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.Category});
  final CategoryModel Category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: Category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 130,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              image: DecorationImage(
                  image: AssetImage(Category.Image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              Category.categoryName,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
