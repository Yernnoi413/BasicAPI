import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

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
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            myBox(
                "ภาคเหนือ...เที่ยวไหนดี?",
                "10 สถานที่เที่ยวหน้าหนาวยอดฮิตของภาคเหนือ...ที่ไปแล้วจะหนาว",
                "https://cdn.pixabay.com/photo/2014/02/09/12/04/landscape-262715_960_720.jpg"),
            SizedBox(height: 15),
            myBox(
                "ภาคกลาง...เที่ยวไหนดี?",
                "10 สถานที่เที่ยวสุดฮิตของภาคกลาง...ที่ไปแล้วจะต้องเช็คอิน",
                "https://scontent.fbkk8-4.fna.fbcdn.net/v/t1.6435-9/182354960_872467503483259_2754343625697045714_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHZ3_AvS9BcEWx5JYxtKkohSst8oItSD7FKy3ygi1IPsSTvq38rBEd77it4JdcO61erB1yTsTMCM2r69lT1sqhn&_nc_ohc=RTHhtailzlsAX917d09&_nc_ht=scontent.fbkk8-4.fna&oh=bcc589a0e3987d86cdb667e9cb28f076&oe=61519BDA"),
            SizedBox(height: 15),
            myBox("ภาคตะวันออก...เที่ยวไหนดี?", 
                "10 สถานที่เที่ยวชาร์จแบตของภาคตะวันออก...ที่มีครบจบในภาคเดียว",
                "https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.6435-9/59384714_401340107262670_3012861881028182016_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=cdbe9c&_nc_eui2=AeEb8cfHjF2r-ar4xb2d5QHsVL3sb7mUR-RUvexvuZRH5DJ3pk-Yu0aAXSPDvjXQd15gcgko-xQHkqhafuI1sW2w&_nc_ohc=EbJlBhC4AM4AX8FWaiJ&tn=17A23xsLnRyoRnse&_nc_ht=scontent.fbkk12-1.fna&oh=f4c9b331fbdfd5b0d8189f3a105e7d78&oe=6150AA5C"),
            SizedBox(height: 15),
            myBox("ภาคตะวันตก...เที่ยวไหนดี?", 
                "10 สถานที่เที่ยวพักผ่อนของภาคตะวันตก...ไม่ไปไม่ได้แล้ว",
                "https://cdn.pixabay.com/photo/2019/02/20/10/44/death-railway-4008940_960_720.jpg"),
            SizedBox(height: 15),
            myBox("ภาคใต้...เที่ยวไหนดี?", 
                "10 สถานที่เที่ยวสุดสะท้่านแดดของภาคใต้...ที่มีน้ำทะเลสีเขียวสวยมาก!",
                "https://cdn.pixabay.com/photo/2014/10/15/09/49/boats-489424_960_720.jpg"),
          ],
        ),
      ),
    );
  }

  Widget myBox(String title, String subtitle, String image_url) {
    return Container(
      padding: EdgeInsets.all(20),
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
                  Colors.black.withOpacity(0.60), BlendMode.darken))),
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
            style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'iannnnnDUCK'),
          ),
          SizedBox(height: 18),
          TextButton(onPressed: (){
            print("Next Page >>>");
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
          }, child: Text(">> อ่านต่อ <<",
              style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: 'iannnnnDUCK',
          )))
        ],
      ),
    );
  }
}
