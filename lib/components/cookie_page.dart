import 'package:cakeshop/components/cake_detail.dart';
import 'package:cakeshop/components/cookie_detail.dart';
import 'package:cakeshop/model/Product.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFCFAF8),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.8,
                children: _buildCard(context),
              ),
            ),
          ],
        ));
  }

//  List<Padding> _buildCard(String name, int price, String img, bool added,
//      bool isFav, String description, context) {
  List<Padding> _buildCard(BuildContext context) {
    if (cookies == null || cookies.isEmpty) {
      return const <Padding>[];
    }
    return cookies.map((cookie) {
      return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CookieDetail(
                      img: cookie.img,
                      price: cookie.price,
                      name: cookie.name,
                      description: cookie.description)));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        cookie.isFav
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_border, color: Colors.red)
                      ],
                    ),
                  ),
                  Hero(
                      tag: cookie.img,
                      child: Container(
                          height: 80.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage(cookie.img),
                                  fit: BoxFit.fill)))),
                  SizedBox(height: 7.0),
                  Text(
                    "\$ ${cookie.price.toString()}",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Text(
                      cookie.name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(color: Color(0xFFEBEBEB), height: 1.0),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          if (!cookie.isAdded) ...[
                            Icon(
                              Icons.shopping_basket,
                              color: Color(0xFFD17E50),
                              size: 14.0,
                            ),
                            Text("Add to Cart",
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xFFD17E50)))
                          ],
                          if (cookie.isAdded) ...[
                            Icon(
                              Icons.remove_circle_outline,
                              color: Color(0xFFD17E50),
                              size: 14.0,
                            ),
                            Text("0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Color(0xFFD17E50))),
                            Icon(Icons.add_circle_outline,
                                color: Color(0xFFD17E50), size: 14.0),
                          ],
                        ],
                      ))
                ],
              ),
            )),
      );
    }).toList();
  }
}
