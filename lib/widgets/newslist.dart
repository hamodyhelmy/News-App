import 'package:flutter/material.dart';
import 'package:news_app/Models/artical.dart';
import 'package:news_app/widgets/newscard.dart';

// ignore: must_be_immutable
class Newslist extends StatelessWidget {
  List<Artical> artic;
  Newslist({super.key, required this.artic});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: artic.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Newscard(
          artical: artic[index],
        ),
      );
    }));
  }
}
