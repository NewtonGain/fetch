import 'package:fetch/fetchdata.dart';
import 'package:fetch/push.dart';
import 'package:flutter/material.dart';
class PushAndGet extends StatefulWidget {
  const PushAndGet({super.key});

  @override
  State<PushAndGet> createState() => _PushAndGetState();
}

class _PushAndGetState extends State<PushAndGet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(child: Text("Data push"),onPressed: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  AddDataScreen()),
  );
              },),
              TextButton(child: Text("Show all Data"),onPressed: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  FetchDataScreen()),
  );
              },),
            ],
          ),
        )
      ),
    );
  }
}