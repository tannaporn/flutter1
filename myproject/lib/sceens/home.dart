//StatefulWidget  widget ที่สามารถเปลี่ยนแปลงต่าได้
//StatelessWidget widget ที่ไม่สามารถเปลี่ยนแปลงค่าได้ ใช้สร้างพวกค่าคงที่
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    /*  Container กรอบคลอบ widget อื่นไว้ข้างในเหมือน div
    ---------------------------------Center , Container ----------------------
   // 
    return Center(
      child: Container(
        color: Colors.orange,
        //margin = ระยะห่างด้านนอก   fromLTRB = กำหนดระยะห่างซ้ายขาวบนล่าง symmetric=กำหนดระยะแนวนอนแนวตั้ง
        //margin: const EdgeInsets.fromLTRB(3, 5, 3, 5),
       // margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
       // padding = ระยะห่างด้านนอก  all = ระยะห่างเท่ากันซ้ายขวาบนล่าง
        padding: const EdgeInsets.all(5) ,
        child: const Text("FernJaiya",
        style: TextStyle(
          fontSize: 20 ,
        letterSpacing: 3  //ระยะห่าตัวอักษร
        ),
      
        ),
      ),
    );
  }
  ------------------------------------------
  */

    /* Column = จัดเรียง wiget ตามแนวตั้ง

  return Column(
    // mainAxisAlignment = กำหนด children Container ทั้งหมดให้อยู่ตรงไหน ตามแนวตั้ง
    mainAxisAlignment: MainAxisAlignment.spaceAround,  
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      ),
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      ),
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      )
    ],
  );
------------------------------------------------------------
*/

    /*   Row  = จัดเรียง wiget ตามแนวนอน
 return Row(
    // mainAxisAlignment = กำหนด children Container ทั้งหมดให้อยู่ตรงไหน ตามแนวตั้ง
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      ),
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      ),
      Container(
        color: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Text(
          "Fern",
          style: TextStyle(fontSize: 16,letterSpacing: 3),
          ),
      )
    ],
  );

  */

    /* Image

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children :[
              Image.network(
                "https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png",
                width: 150,
                height: 150,
              ),
               Image.asset(
                "assets/images/pic2.png",
                 width: 150,
                 height: 150,
              )
      ]
      
      ),
    );
    */

    // Button
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                print("Click");
              },
              child: const Text(
                "Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
              onPressed: () {
                print("Click");
              },
              child: const Text(
                "Click",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              onPressed: () {
                print("Click");
              },
              child: const Text(
                "Click",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                print("Click");
              },
              child: const Text(
                "Click",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
