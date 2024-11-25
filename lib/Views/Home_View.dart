import 'package:flutter/material.dart';
import 'package:live_news/Widget/Category_List_View.dart';
import 'package:live_news/Widget/NewsListViewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Live',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              textDirection: TextDirection.ltr,
              
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            const NewsListViewBuilder(Category: 'top',),
          ],
        ),
      ),
    );
  }
}


