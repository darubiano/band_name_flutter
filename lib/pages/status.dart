import 'package:band_name/services/socket.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  static const String id = 'Status';
  @override
  Widget build(BuildContext context) {
    final socketClass = Provider.of<Socket>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('mundo'),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('ServerStatus: ${socketClass.serverStatus}')
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){
          socketClass.emit("flutter",{"name":"david"});
        },
        ),
    );
  }
}