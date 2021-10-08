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
        title: Center(child: Text("LIST BUAH", textAlign: TextAlign.center,style: TextStyle( fontSize: 40),)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row( children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
          
                    image: DecorationImage(
                      image: AssetImage(gambar[index]),
                      fit: BoxFit.cover,
                    ),
                    
                  ),
              
              ),
              
                Container (margin: EdgeInsets.only(left: 15), height: 80, width : 200, color: Colors.white60, padding: EdgeInsets.all(0.5), child: Column( children:[ Text(buah[index], style: TextStyle(fontSize: 30)),
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