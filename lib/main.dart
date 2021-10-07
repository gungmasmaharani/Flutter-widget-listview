import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}
class BelajarListView extends StatelessWidget {
  final List buah = [
    "Banana",
    "Blueberry",
    "Pineapple",
    "Pear",
    "Stobery"
  ];
   final List gambar = [
    'assets/images/image (1).JPG',
    'assets/images/image (2).JPG',
    'assets/images/image (3).JPG',
    'assets/images/image (4).JPG',
    'assets/images/image (5).JPG'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST BUAH"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row( children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(gambar[index],fit: BoxFit.contain,
                  width: 100,
                  height: 100,),
                ),
                Container ( child: Column( children:[ Text(buah[index], style: TextStyle(fontSize: 30)),
                Text('Keterangan',textAlign: TextAlign.left, style: TextStyle(fontSize: 15,),)],),)
               
                ],),
            ),
          );
        },
        itemCount: buah.length,
      ),
    );
  }
}