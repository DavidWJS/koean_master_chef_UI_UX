import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food/screen/category/byIngredient.dart';
import 'package:food/screen/category/byMethod.dart';
import 'package:food/screen/category/byType.dart';
import 'package:food/screen/recipes.dart';
import 'package:food/screen/todaysPick.dart';

class Home extends StatefulWidget {
  final Widget child;
  @override
  Home({Key key, this.child}) : super(key:key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF212128),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Korean Master Chef",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.search_rounded, size: 22,),
              ],
            ),
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 35),
              isScrollable: true,
              indicatorColor: Color(0xFFefb321),
              labelColor: Color(0xFFefb321),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 3.0,
              onTap: (index) {
                setState(() {});
              },
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Today's Pick",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Recipes",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Category(),
              TodaysPick(),
              Recipes()
            ],
          ),
        )
    );
  }


  Widget Category() {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF212128),
            toolbarHeight: 50,
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              isScrollable: true,
              indicatorColor: Color(0xFFefb321),
              labelColor: Color(0xFFefb321),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 3.0,
              onTap: (index) {
                setState(() {});
              },
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "By type",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "By Ingredient",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "By Method",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ByType(),
              ByIngredient(),
              ByMethod()
            ],
          ),
        )
    );
  }
}