import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Draggable ListView'),
        ),
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/img.png'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            DraggableScrollableSheet(
              builder: (context, controller) {
                return Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 15,
                    controller: controller,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        title: Text('Item ${index + 1}'),
                      );
                    },
                  ),
                  // decoration: BoxDecoration(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
