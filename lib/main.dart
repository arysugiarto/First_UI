import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('lib/images/staw.jpg'),
    );

 
    
    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Stawberry ',
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
        'Pavlova is menrique-based dessert named after the Rusian ballerine, '
        'Anna Pavlova. Pavloa features a crisp crust and soft, light inside, '
        'topped with fruit, and whipped cream',
        textAlign: TextAlign.justify,
      ),
    );

    Widget rateSection = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [rateSection, Text('170 Reviews')],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Cook", "1 Jam"),
        _buildMenuSection(Icons.fastfood, "feed", "4-6")
      ],
    );

    return MaterialApp(
        title: 'Materials App',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back_ios, color: Colors.black),
              title: Text(
                'Learn Layouting',
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

Widget _buildTextSectio(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(fontSize: textSize),
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
      _buildTextSectio(title, 16, 8),
      _buildTextSectio(timestamp, 12, 12)
    ],
  );
}
