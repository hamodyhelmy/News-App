import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

// ignore: must_be_immutable
class Categoryviews extends StatelessWidget {
  Categoryviews({super.key, required this.category});
  String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Newslistviewbuilder(
            categ: category,
          )
        ],
      ),
    );
  }
}
