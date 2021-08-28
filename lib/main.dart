import 'package:flutter/material.dart';
import 'home.dart';
import 'person.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int index = 0;
  List<Widget> list = [Home(), Person()];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: list[index],
        appBar: AppBar(
          title: Text('FAB'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 10,
          child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() => index = value);
              print("${value}=======>");
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: index == 0 ? Colors.blue : Colors.grey,
                  ),
                  title: SizedBox.shrink()),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: index == 1 ? Colors.blue : Colors.grey,
                  ),
                  title: SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}
