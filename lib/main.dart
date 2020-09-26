import 'package:band_name/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor:Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(_)=> HomePage()
      },
    );
  }
}