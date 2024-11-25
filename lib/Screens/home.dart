import 'package:flutter/material.dart';
import 'package:news_app/widgets/cardlist.dart';

import '../widgets/news_list_view_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Cardlist()),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
            const Newslistviewbuilder(
              categ: 'general',
            ),
          ],
        ));
  }
}
