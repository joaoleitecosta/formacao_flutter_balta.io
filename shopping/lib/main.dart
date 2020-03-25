import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/cart-bloc.dart';
import 'package:shopping/blocs/home-bloc.dart';
import 'package:shopping/ui/android/pages/tabs-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(value: HomeBloc()),
        ChangeNotifierProvider<CartBloc>.value(value: CartBloc()),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping Card",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DefaultTabController(
        child: TabsPage(),
        length: 3,
      ),
    );
  }
}
