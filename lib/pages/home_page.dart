import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/model/Catlog.dart';
import 'package:pavan_kumar_flutter_30_days/widget/ProductWidget.dart';
import 'package:pavan_kumar_flutter_30_days/widget/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext contgitext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return ProductWidget(catlogItem: CatlogModel.catlogItems[index]);
          },
          itemCount: CatlogModel.catlogItems.length,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
