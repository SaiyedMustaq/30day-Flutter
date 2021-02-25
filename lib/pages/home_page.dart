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
            ? ListView.builder(
                itemBuilder: (ctx, index) =>
                    ProductWidget(catlogItem: CatlogModel.catlogItems[index]),
                itemCount: CatlogModel.catlogItems.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
