import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  // const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Color(0xff009999)),
        title: Text("Contact",
        style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
                fontFamily: 'iannnnnDUCK',
          )
        ),     
      ),
      
      body: Padding(      
        padding: const EdgeInsets.fromLTRB(70, 20, 30, 0), //ซ้าย บน ขวา ล่าง
      // children: [
      //   Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset(
                'assets/images/bus-contact.png',
                width: 320,
                height: 200,
              ),
              SizedBox(height: 25),
              Text("แอพนี้พัฒนาโดย Pornrat.B",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'iannnnnDUCK',
              )),
              Text("GitHub : https://github.com/Yernnoi413",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black54,
                fontFamily: 'iannnnnDUCK',
              )),
            ],
          ),
        )
      
      // ]
      
    );
  }
}