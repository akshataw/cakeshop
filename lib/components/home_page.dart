import 'package:cakeshop/components/cart_details.dart';
import 'package:cakeshop/components/products_page.dart';
import 'package:flutter/material.dart';

import '../auth.dart';
import 'app_drawer.dart';
import 'bottom_appbar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Cake shop",
            style: TextStyle(fontSize: 25.0, color: Color(0xFFF17532))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartDetails(),
              ));
            },
          ),
        ],
      ),
      drawer: name != null ? AppDrawer() : null,
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Categories',
            style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.amberAccent,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: Text(
                    'Cakes',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cookies',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Ice Cream',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ProductsPage(item: "cakes"),
                  ProductsPage(item: "cookies"),
                  ProductsPage(item: "icecreams"),
                ],
              ))
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
