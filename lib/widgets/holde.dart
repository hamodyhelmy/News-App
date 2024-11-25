/*import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Models/artical.dart';
import 'package:news_app/services/newsservice.dart';
import 'package:news_app/widgets/newscard.dart';

class Newslist extends StatefulWidget {
  Newslist({super.key});

  @override
  State<Newslist> createState() => _NewslistState();
}

class _NewslistState extends State<Newslist> {
  List<Artical> artic = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getnewsgen();
  }

  void getnewsgen() async {
    artic = await Newsservice().getnews();
    setState(() {});
    isloading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? SliverToBoxAdapter(
            child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.3,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ))
        : SliverList(
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
}*/
