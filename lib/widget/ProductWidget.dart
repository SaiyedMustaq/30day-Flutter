import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/model/Catlog.dart';

class ProductWidget extends StatelessWidget {
  final CatlogItem catlogItem;
  const ProductWidget({Key key, @required this.catlogItem})
      : assert(catlogItem != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        onTap: () {
          print('${catlogItem.name} press ');
        },
        leading: Image.network(catlogItem.imageUrl),
        title: Text(catlogItem.name),
        subtitle: Text(catlogItem.desc),
        trailing: Text('\$ ${catlogItem.price.toString()}',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
