import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inkwel extends StatelessWidget {
  const Inkwel({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ItemPage(newItem: item)),
        );
      },
        child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(child: Text(item.name)),
              Expanded(child: Text(item.merk)),
              Expanded(child: Text(item.jenis)),
              Expanded(child: Text(item.price.toString())),
              Expanded(
                child: Text(
                  item.qty.toString(),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}