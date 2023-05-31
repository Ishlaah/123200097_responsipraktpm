import 'package:flutter/material.dart';
import 'package:responsi_praktpm/model/list_meal_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class DetailNews extends StatelessWidget {
  final Posts posts;
  const DetailNews({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 180, 24),
        title: Text("Meals Detail"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "${posts.title!}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Image.network("${posts.thumbnail!}"),
            SizedBox(height: 20),
            Text(
              "${posts.description!}",
              textAlign: TextAlign.justify,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () async {
                    await urlLaunch(posts.link!);
                  },
                  child: Text("Lihat Youtube"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> urlLaunch(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
