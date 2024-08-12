import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {

  final _formKey = GlobalKey<FormState>();
  String _name='';
  int _age=20;
  Job _job = Job.police;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอร์มบันทึกข้อมูล"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // input text
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("ชื่อ",style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                        return "กรุณาป้อนชื่อของคุณ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name=value!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("อายุ",style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                        return "กรุณาป้อนอายุของคุณ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20,),
                // dropdown
                DropdownButtonFormField(
                  value: _job,
                  decoration: const InputDecoration(
                    label: Text("อาชีพ",style: TextStyle(fontSize: 20),)
                  ),
                  items: Job.values.map((key){
                      return DropdownMenuItem(
                        value: key,
                        child: Text(key.title),
                      );
                  }).toList(), 
                  onChanged: (value){
                      setState(() {
                        _job=value!;
                      });
                  }
                ),
                //Button save
                FilledButton(
                  onPressed: (){
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    // save to data list
                    data.add(
                      Person(name: _name, age: _age, job: _job)
                    );
                   
                    _formKey.currentState!.reset();  // reset from
                    // pushReplacement เอาหน้า MyApp มาแทนที่  ไม่สามรถกดback ไปที่ addfrom ได้
                    Navigator.pushReplacement(context,MaterialPageRoute(
                      builder: (ctx)=>const MyApp())
                    );
                  }, 
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  child: const Text("บันทึก",style: TextStyle(fontSize: 20),)
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}