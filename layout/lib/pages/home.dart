import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Color(0xff009999)),
        toolbarHeight: 150,
        title: Text("          VanOnTour\n   บริการรถตู้เช่า รถตู้ทัวร์เช่า \nสำหรับธุรกิจและท่องเที่ยวทั่วไทย",
          style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: (Color(0xff003399)),
                fontFamily: 'iannnnnDUCK',
                
          ) 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            buildVans(),
          ],
        ),
      ),
    );
  }





Widget buildVans() => Row(
        children: [
          Expanded(child: buildDataVan()),
          const SizedBox(width: 10),
          Expanded(child: buildDataVan()),
          const SizedBox(width: 10),
          Expanded(child: buildDataVan()),
        ],
      );

  Widget buildDataVan() {
    final urlVans =
        'https://cdn.pixabay.com/photo/2014/04/02/16/24/bus-307191_1280.png';

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFF20B2AA),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(urlVans,
                width: 255, height: 140, fit: BoxFit.contain),
            Text(
              'รถตู้ V.I.P.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff006699),
                fontSize: 22,
                fontFamily: 'iannnnnDUCK',
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'บริการเช่ารายวัน/เดือน วิ่งรับ-ส่งพนักงาน และรับทัวร์ท่องเที่ยวทั่วไทย',
              style: TextStyle(color: Colors.white, fontSize: 17,fontFamily: 'iannnnnDUCK',),
            ),
            const SizedBox(height: 8),
            Text(
              '>> รายละเอียดเพิ่มเติม <<',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 16,
                fontFamily: 'iannnnnDUCK',
              ),
            ),
          ],
        ),
      ),
    );
  }
}