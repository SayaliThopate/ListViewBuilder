import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View Builder"),
        ),
        body:ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return Text(
              "index : $index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
            );
          }

        )
      ),
    );
  }
}
