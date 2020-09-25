import 'package:flutter/material.dart';

import 'bottom_appbar.dart';

class ProductDetail extends StatelessWidget {
  final type, img, price, name, description;

  const ProductDetail(
      {Key key, this.type, this.img, this.price, this.name, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Cake shop",
            style: TextStyle(fontSize: 20.0, color: Colors.amber)),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                type == "cookies"
                    ? "Cookie"
                    : type == "cakes" ? "Cake" : "Ice-cream",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532),
                ),
              )),
          SizedBox(
            height: 15.0,
          ),
          Hero(
            tag: img,
            child: Image.asset(
              img,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              "\$ ${price.toString()}",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF575E67),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                description != null ? description : "Delicious Products",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFB488B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(25.0),
                    color: Color(0xFFF17532),
                  ),
                  child: Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
