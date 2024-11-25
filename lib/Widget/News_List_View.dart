// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:live_news/Models/Article_Model.dart';
import 'package:live_news/Widget/News_Tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles;
  NewsListView({super.key,required this.articles});

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: News_Tile(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
