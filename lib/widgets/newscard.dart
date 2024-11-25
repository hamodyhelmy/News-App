import 'package:flutter/material.dart';
import 'package:news_app/Models/artical.dart';

import 'webview.dart';

// ignore: must_be_immutable
class Newscard extends StatelessWidget {
  Newscard({super.key, required this.artical});
  Artical artical;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return WebViewTest(
            art: artical.url,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 1, right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                        artical.image ??
                            'https://img.freepik.com/free-vector/blue-breaking-news-tv-background_1017-14201.jpg',
                      ),
                      fit: BoxFit.fill)),
              height: 220,
              width: 370,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                artical.title,
                style: const TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                artical.subtitle ?? '',
                style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
