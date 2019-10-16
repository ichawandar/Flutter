import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('images/sate.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Sate Taichan',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Sate taichan adalah sebuah varian sate yang berisi daging ayam yang dibakar tanpa baluran bumbu kacang atau kecap seperti sate pada umumnya',
        textAlign: TextAlign.justify,
      ),
    );

    Widget rateSection = Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection =
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      rateSection,
      Text('50 Reviews'),
    ]);

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Cook", "1 hour"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-5"),
      ],
    );

    return MaterialApp(
        title: 'Material Apps',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back_ios, color: Colors.black),
              title: Text(
                'Detail Makanan',
                style: TextStyle(color: Colors.black),
              ),
              actions: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.black,
                )
              ],
            ),
            body: ListView(
              children: [
                imageSection,
                titleSection,
                descriptionSection,
                Container(
                  padding: EdgeInsets.only(bottom: 24),
                  child: reviewSection,
                ),
                menuSection,
              ],
            )));
  }
}

Widget _buildTextSection(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12)
    ],
  );
}
