import 'package:band_name/pages/home.dart';
import 'package:band_name/pages/status.dart';
import 'package:band_name/services/socket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Socket(),)
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData(
          primaryColor:Colors.blue
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home':(_)=> HomePage(),
          'status': (_)=> StatusPage(),
        },
      ),
    );
  }
}