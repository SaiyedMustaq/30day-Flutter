class CatlogModel {
  static List<CatlogItem> catlogItems;
}

class CatlogItem {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;
  CatlogItem(
      {this.id, this.name, this.desc, this.price, this.color, this.imageUrl});

  factory CatlogItem.fromMap(Map<String, dynamic> map) {
    return CatlogItem(
        id: map['id'],
        name: map['name'],
        desc: map['desc'],
        price: map['price'],
        color: map['color'],
        imageUrl: map['imageUrl']);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageUrl": imageUrl
      };
}
