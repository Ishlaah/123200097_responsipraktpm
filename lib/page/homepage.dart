import 'package:flutter/material.dart';
import 'package:responsi_praktpm/page/list_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              child: Image.network(""),
            ),*/
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "beef",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 180, 24)),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 120,
                    child: Text("Beef"),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "chicken",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 180, 24)),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 120,
                    child: Text("chicken"),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "dessert",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 180, 24)),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 120,
                    child: Text("dessert"),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "lamb",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 180, 24)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: Text("Lamb"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsList(
                            category: "misscellaneous",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 180, 24)),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 120,
                    child: Text("misscellaneous"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
