import 'package:flutter/material.dart';
import 'package:layout/pages/article.dart';
import 'package:layout/pages/home.dart';
import 'package:layout/pages/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'แอพบล็อคท่องเที่ยว',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 1;
  final tabs = [HomePage(),ArticlePage(),ContactPage()]; //เก็บค่าเป็น list เก็บได้หลายค่า เริ่มนับจาก 0


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: (Color(0xff7e27e3)),
        //   title: Text('บทความท่องเที่ยว',
        //       style: TextStyle(fontSize: 25, fontFamily: 'iannnnnDUCK'))),
        body: tabs[_currentIndex], 
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: (Color(0xff009999)),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          items: [ 
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "หน้าแรก"),
            BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "บล็อคท่องเที่ยว"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "ติดต่อเรา"),
          ],
          onTap: (index){
            setState((){
              print(index);
              _currentIndex = index;
            });
          },
        ),
    );
  }
}