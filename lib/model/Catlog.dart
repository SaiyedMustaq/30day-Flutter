class CatlogModel {
  static final catlogItems = [
    CatlogItem(
      id: 1,
      name: "iPhone 5",
      desc: "Apple iPhone 12th Generation",
      price: 699,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/416/416/j1dvte80/mobile/p/a/t/apple-iphone-5s-a1530-original-imae2fhpc35bftft.jpeg",
    ),
    CatlogItem(
      id: 2,
      name: "iPhone 6",
      desc: "Apple iPhone 12th Generation",
      price: 699,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/416/416/mobile/f/2/j/apple-iphone-6-original-imaeymdqs5gm5xkz.jpeg",
    ),
    CatlogItem(
      id: 3,
      name: "iPhone 6s",
      desc: "Apple iPhone 12th Generation",
      price: 699,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/mobile/t/e/7/apple-iphone-6s-na-original-imaebymaz5exfapw.jpeg",
    ),
    CatlogItem(
      id: 4,
      name: "iPhone 7",
      desc: "Apple iPhone 12th Generation",
      price: 799,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/k3ncakw0/mobile/7/e/e/apple-iphone-7-mn8x2hn-a-original-imafmqymth4z66v4.jpeg",
    ),
    CatlogItem(
      id: 5,
      name: "iPhone 7plus",
      desc: "Apple iPhone 12th Generation",
      price: 799,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/k13w4280/mobile/h/q/h/apple-iphone-7-plus-mn4w2hn-a-original-imafkqfhzxgedrcu.jpeg",
    ),
    CatlogItem(
      id: 6,
      name: "iPhone 8",
      desc: "Apple iPhone 12th Generation",
      price: 899,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/j7ksia80/mobile/2/r/q/apple-iphone-8-mq6m2hn-a-original-imaexsbzyvydzgzw.jpeg",
    ),
    CatlogItem(
      id: 7,
      name: "iPhone x",
      desc: "Apple iPhone 12th Generation",
      price: 899,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/j7ksia80/mobile/t/4/f/apple-iphone-8-plus-mq8g2hn-a-original-imaexsfhxepbngdq.jpeg",
    ),
    CatlogItem(
      id: 8,
      name: "iPhone Xs",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/j9d3bm80/mobile/f/y/v/apple-iphone-x-mqa92hn-a-original-imaeyysgqbg8qmhn.jpeg",
    ),
    CatlogItem(
      id: 9,
      name: "iPhone xsMax",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/jm9hfgw0/mobile/f/t/a/apple-iphone-xs-max-mt532hn-a-original-imaf97f6y3spd7yz.jpeg",
    ),
    CatlogItem(
      id: 10,
      name: "iPhone 11",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/kgiaykw0/mobile/3/x/e/apple-iphone-11-mhdc3hn-a-original-imafwqepx5yxwctc.jpeg",
    ),
    CatlogItem(
      id: 11,
      name: "iPhone 11pro",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/k2jbyq80pkrrdj/mobile-refurbished/z/a/f/iphone-11-pro-max-256-u-mwhm2hn-a-apple-0-original-imafkg2ftc5cze5n.jpeg",
    ),
    CatlogItem(
      id: 12,
      name: "iPhone 12",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/kg8avm80/mobile/p/f/w/apple-iphone-12-dummyapplefsn-original-imafwg8dqjuq8sug.jpeg",
    ),
    CatlogItem(
      id: 13,
      name: "iPhone 12Max",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      imageUrl:
          "https://rukminim1.flixcart.com/image/352/352/kg8avm80/mobile/c/v/t/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcyyahey58k.jpeg",
    ),
    CatlogItem(
        id: 14,
        name: "iPhone 12Mini",
        desc: "Apple iPhone 12th Generation",
        price: 999,
        color: "#33505a",
        imageUrl:
            "https://rukminim1.flixcart.com/image/352/352/kg8avm80/mobile/r/2/r/apple-iphone-12-mini-dummyapplefsn-original-imafwgbfcswp9fh5.jpeg")
  ];
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
}
