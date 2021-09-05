import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

import 'package:http/http.dart' as http;  // package สำหรับ request ข้อมูล
import 'dart:async';  // package สำหรับ request ข้อมูล

class ArticlePage extends StatefulWidget {
  // const ArticlePage({ Key? key }) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: (Color(0xff009999)),
          
          title: Text("บทความท่องเที่ยว",
          style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
                fontFamily: 'iannnnnDUCK',
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: FutureBuilder(builder: (context, AsyncSnapshot snapshot) {
            //var data = json.decode(snapshot.data.toString()); // [{ภาคเหนือ...เที่ยวไหนดี?...},{},{},{},{}] เป็น List Data
            return ListView.builder(
              itemBuilder: (BuildContext context, int index){
                  return MyBox(snapshot.data[index]['title'], snapshot.data[index]['subtitle'], snapshot.data[index]['image_url'], snapshot.data[index]['detail']);
              }, 
              itemCount: snapshot.data.length,
              );

          },

          future: getData(), //เรียกใช้ file JSON จาก GitHub
          //future: DefaultAssetBundle.of(context).loadString('assets/data.json'), //เป็นการโหลด file json จากใน Project
        )
      )
    );

  }

  Widget MyBox(String title, String subtitle, String image_url, String detail) {
    var v1 = title;
    var v2 = subtitle;
    var v3 = image_url;
    var v4 = detail;

    return Container(
      margin: const EdgeInsets.all(8),
      padding: EdgeInsets.all(14),
      //color: Colors.blue[50],
      height: 200,
      decoration: BoxDecoration(
          //color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  image_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.60), BlendMode.darken)),
          boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                offset: Offset(4, 3),
                blurRadius:3,
                spreadRadius: 0,
              ),
          ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'iannnnnDUCK'),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(fontSize: 21, color: Colors.white,fontFamily: 'iannnnnDUCK'),
          ),
          SizedBox(height: 25),
          TextButton(onPressed: (){
            print("Next Page >>>");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(v1,v2,v3,v4)));
          }, child: Text(">> อ่านต่อ <<",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'iannnnnDUCK',
          )))
        ],
      ),
    );
  }

  // async เป็น function ที่ใช้เวลาดาวน์โหลด จะใช้สำหรับการดึงข้อมูลจาก Internet
  // await จะมาคู่กับ async รอการ response ให้จบถึงมีการ return ออกมา
  Future getData() async {
    //https://raw.githubusercontent.com/Yernnoi413/BasicAPI/main/data.json
    var url = Uri.https('raw.githubusercontent.com','/Yernnoi413/BasicAPI/main/data.json');
    var response = await http.get(url);
    var result = json.decode(response.body);
    return result;
  }

}