import 'package:flutter/material.dart';

enum Job{
  doctor(title: "หมอ" ,Image:"assets/images/pic2.png",color:Colors.green),
  teacher(title: "ครู",Image:"assets/images/pic6.png",color:Color.fromARGB(255, 19, 149, 249)),
  nurse(title: "พยาบาล",Image:"assets/images/pic3.png",color:Color.fromARGB(255, 255, 0, 179)),
  police(title: "ตำรวจ",Image:"assets/images/pic5.png",color:Color.fromARGB(255, 234, 98, 0));

  const Job({required this.title, required this.Image,required this.color});
  final String title;
  final String Image;
  final Color color;

}

class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  Job job;
}

List<Person> data =[
  Person(name: "fern1",age: 10,job: Job.doctor),
  Person(name: "fern3",age: 10,job: Job.nurse),
  Person(name: "fern2",age: 10,job: Job.teacher)
];

