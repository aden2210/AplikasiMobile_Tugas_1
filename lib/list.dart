import 'package:flutter/material.dart';
import './detailproduk.dart';

class ListProduk extends StatefulWidget {
  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Product List"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "RTX 3090",
                  description: "Powerfull VGA",
                  price: 29000000,
                  image: "RTX3090.png",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "RTX 3090",
                description: "Powerfull VGA",
                price: 29000000,
                image: "RTX3090.png",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Arctis 3",
                  description: "Wireless Gaming Headset",
                  price: 995000,
                  image: "Arctic3W.png",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                name: "Arctis 3",
                description: "Gaming Headset",
                price: 995000,
                image: "Arctic3W.png",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Arctis 7",
                  description: "Wireless Gaming Headset",
                  price: 2285000,
                  image: "Arctic7.png",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Arctis 7",
                description: "Gaming Headset",
                price: 2285000,
                image: "Arctic7.png",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "PC Gaming",
                  description: "Medium Tier PC",
                  price: 10000000,
                  image: "MediumTier.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "PC Gaming",
                description: "Medium PC",
                price: 10000000,
                image: "MediumTier.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "PC Gaming",
                  description: "High Tier PC",
                  price: 55000000,
                  image: "MSIPC.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "PC Gaming",
                description: "Expensive PC",
                price: 55000000,
                image: "MSIPC.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
