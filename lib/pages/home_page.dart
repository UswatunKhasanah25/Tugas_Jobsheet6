
import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/inkwel.dart';

class HomePage extends StatelessWidget {
    final List<Item> items = [
      Item(name: 'Sugar', merk: "GULAKU", jenis: "bumbu", price: 5000, qty: 2),
      Item(name: 'Salt', merk: "KAPAL", jenis: "bumbu", price: 2000, qty: 5),
      Item(name: 'Flavoring', merk: "ROYCO", jenis: "bumbu", price: 1000, qty: 10),
      Item(name: 'Soy Sauce', merk: "BANGO", jenis: "bumbu", price: 6500, qty: 5),
      Item(name: 'Pepper', merk: "LADAKU", jenis: "bumbu", price: 1000, qty: 10),
      Item(name: 'Carrot', merk: "--", jenis: "sayur", price: 8000, qty: 10),
      Item(name: 'Spinach', merk: "--", jenis: "sayur", price: 2000, qty: 10),
      Item(name: 'Mujaer', merk: "--", jenis: "ikan", price: 10000, qty: 15),
    ];

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WELCOME in MINI MARKET"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Inkwel(item: item);
            },
        ),
        ),),);
  } 
}

