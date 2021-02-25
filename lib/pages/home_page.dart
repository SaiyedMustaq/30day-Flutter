import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pavan_kumar_flutter_30_days/model/Catlog.dart';
import 'package:pavan_kumar_flutter_30_days/widget/ProductWidget.dart';
import 'package:pavan_kumar_flutter_30_days/widget/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catlogJSON = await rootBundle.loadString("assets/files/catlog.json");
    print(catlogJSON);
    var decodeJson = jsonDecode(catlogJSON);
    print(decodeJson);
    var productsData = decodeJson['product'];
    CatlogModel.catlogItems = List.from(productsData)
        .map<CatlogItem>((item) => CatlogItem.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext contgitext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: (CatlogModel.catlogItems != null &&
                CatlogModel.catlogItems.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final item = CatlogModel.catlogItems[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: GridTile(
                          footer: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(color: Colors.deepPurple),
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          header: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(color: Colors.deepPurple),
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          child: Image.network(
                            item.imageUrl,
                            fit: BoxFit.scaleDown,
                          )));
                },
                itemCount: CatlogModel.catlogItems.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemBuilder: (ctx, index) =>
          ProductWidget(catlogItem: CatlogModel.catlogItems[index]),
      itemCount: CatlogModel.catlogItems.length,
    );
  }
}
