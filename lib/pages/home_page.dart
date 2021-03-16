import 'package:belanja/models/items.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(id: 'SIG001', name: 'Sugar', price: 5000, stock: 50),
    Item(id: 'SIG002', name: 'Salt', price: 2000, stock: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Belanja"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(
                          item: item,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.id)),
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
