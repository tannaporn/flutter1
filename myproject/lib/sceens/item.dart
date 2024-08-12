import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/sceens/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<StatefulWidget> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // int qty = 0;
  // List data = ["สมชาย","ก้อง","ชาลี","โจโจ้"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child:  ListView.builder(
          /*  set State
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // set value
            Text("$qty", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
            const  SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  //use State
                  setState(() {
                    qty += 1;
                  });
                },
                child: const Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  //use State
                  setState(() {
                    if(qty>0){qty -= 1;}else{qty=0;}
                    
                  });
                },
                child: const Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ],
          ), 
        */
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: data[index].job.color),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data[index].name,
                            style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                    fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)))),
                        Text(
                          "อายุ : ${data[index].age} ปี  อาชีพ : ${data[index].job.title}",
                          style: GoogleFonts.prompt(textStyle: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 250, 245, 245))),
                        ),
                      ],
                    ),
                    Image.asset(
                      data[index].job.Image,
                      width: 70,
                      height: 70,
                    )
                  ],
                ));
          },
        ),
     ),
       SizedBox(
        width: 100,
        height: 100,
        child: IconButton(
          onPressed: (){
            //เรียกอีหน้าแอพขึ้นมาแสดง ซ้อนทับ  สามารถกดback ได้
            Navigator.push(context,MaterialPageRoute(builder: (ctx)=>const AddForm()));
            
          }
          ,
         icon: const Icon(Icons.add,size: 40,color: Colors.brown)
         ),
       )
      ],
    );
  }
}
