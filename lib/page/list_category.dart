import 'package:flutter/material.dart';
import 'package:responsi_praktpm/page/detail_category.dart';
import 'package:responsi_praktpm/service/base_network.dart';
import 'package:responsi_praktpm/model/list_meal_model.dart';

class NewsList extends StatelessWidget {
  final String? category;
  const NewsList(required String category, {Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String kategori = "$category";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 180, 24),
          title: Text(
            'Meal ' + kategori.toUpperCase(),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: BaseNetwork.get("$category"),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                ListNewsModel listNewsModel =
                    ListNewsModel.fromJson(snapshot.data);
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < listNewsModel.data!.posts!.length;
                          i++)
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailNews(
                                    posts: listNewsModel.data!.posts![i]),
                              ),
                            );
                          },
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "${listNewsModel.data!.posts![i].title}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Image.network(
                                      "${listNewsModel.data!.posts![i].thumbnail}"),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                );
              }
            },
          ),
        )));
  }
}
