import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item newItem;

  ItemPage({
    Key key,
    this.newItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
        title: Text("DETAIL ITEM"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(newItem.name,
            style: TextStyle(fontSize: 20)),
            Text("Merk  => " + newItem.merk),
            Text("Jenis => " + newItem.jenis),
            Text("harga => " + newItem.price.toString()),
            Text("Qty   => " + newItem.qty.toString()),
          ],)
      ),
      ),
    );
  } 
}