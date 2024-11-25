import 'package:flutter/material.dart';

import '../Models/artical.dart';
import '../services/newsservice.dart';
import 'newslist.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key, required this.categ});
  final String categ;
  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    super.initState();
    future = Newsservice(category: widget.categ).getnews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Artical>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newslist(artic: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.3,
                child: const Center(
                  child: Text('Sorry, but an unexpected error occurred'),
                ),
              ),
            );
          } else {
            return SliverToBoxAdapter(
                child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ));
          }
        });
  }
}
