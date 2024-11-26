import 'package:flutter/material.dart';
import 'package:live_news/Models/Article_Model.dart';
import 'package:live_news/Views/News_Web_View.dart';

class News_Tile extends StatelessWidget {
  const News_Tile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articleModel.Image != null) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewsWebView(url: articleModel.url!),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No URL available')),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            child: articleModel.Image != null
                ? Image.network(
                    articleModel.Image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/default.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          Text(
            textAlign: TextAlign.start
            ,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            articleModel.Titel,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            articleModel.SubTitle!,
            style: const TextStyle(
              color: Color.fromARGB(255, 39, 39, 39),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
