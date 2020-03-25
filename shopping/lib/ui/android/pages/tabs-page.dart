import 'package:flutter/material.dart';
import 'package:shopping/ui/android/pages/home-page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          Container(
            color: Colors.red,
          ),
          Container(color: Colors.green)
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(child: Icon(Icons.home)),
          Tab(child: Icon(Icons.shopping_cart)),
          Tab(child: Icon(Icons.perm_identity)),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
