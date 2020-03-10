import 'package:flutter/material.dart';
import 'package:masterclassbalta/store/app.store.dart';
import 'package:masterclassbalta/views/signup.view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(
          value: AppStore(),
        )
      ],
          child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          hintColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2,
                style: BorderStyle.solid,
              ),
              gapPadding: 10.0
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: Colors.red,
                  width: 2
              )
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2
              )
            )
          ),
        //  primarySwatch: Colors.blue,

        ),
        home: SignupView(),
      ),
    );
  }
}
