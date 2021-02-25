import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pavan_kumar_flutter_30_days/model/Catlog.dart';
import 'package:pavan_kumar_flutter_30_days/widget/ProductWidget.dart';
import 'package:pavan_kumar_flutter_30_days/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: MyThemed.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatlogHeader(),
            if (CatlogModel.catlogItems != null &&
                CatlogModel.catlogItems.isNotEmpty)
              CatlogList().expand()
            else
              Center(child: CircularProgressIndicator())
          ]),
        ),
      ),
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

class CatlogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        final catalog = CatlogModel.catlogItems[index];
        return CatlogItemWidget(catalog);
      },
      itemCount: CatlogModel.catlogItems.length,
    );
    ;
  }
}

class CatlogItemWidget extends StatelessWidget {
  final CatlogItem catlogItem;
  CatlogItemWidget(@required this.catlogItem) : assert(catlogItem != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatlogImageWidget(catlogItem.imageUrl),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catlogItem.name.text.bold.make(),
            catlogItem.desc.text.bold.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                '\$${catlogItem.price}'.text.bold.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.make(),
                )
              ],
            )
          ],
        ))
      ],
    )).white.roundedLg.square(150).white.make().p16();
  }
}

class CatlogImageWidget extends StatelessWidget {
  final String image;
  CatlogImageWidget(@required this.image) : assert(image != null);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.roundedLg.color(MyThemed.creamColor).make().p16().w32(context);
  }
}

class CatlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catlog App".text.xl4.bold.color(MyThemed.darkBlueColor).make(),
      "Treanding Product".text.xl.make()
    ]);
  }
}
