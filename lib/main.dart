import 'package:flutter/material.dart';
import 'package:live_news/Views/Home_View.dart';

void main() {

  runApp(const LiveNews());
}

class LiveNews extends StatelessWidget {
  const LiveNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
