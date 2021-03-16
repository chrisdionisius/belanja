import 'package:belanja/models/items.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Barang"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(item.id),
                  Text(item.name),
                  Text(item.price.toString()),
                ],
              )),
            ]),
      ),
    );
  }
}
