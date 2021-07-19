import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mountassissi_clone/const/variables.dart';
import 'package:mountassissi_clone/models/model_school.dart';
import 'package:mountassissi_clone/widgets/customAppbar.dart';

import 'Homepage.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  Future<String> _loadASchoolAsset() async {
    return await rootBundle.loadString('assets/localJson/schoolDetails.json');
  }
var data;
  bool load = false;
  Future loadStudent() async {
    String jsonString = await _loadASchoolAsset();
    final jsonResponse = jsonDecode(jsonString);
    School school = new School.fromJson(jsonResponse);
    setState(() {
      load = true;
      data = school;
      debugPrint('data title is ${data.title}');
    });
    data = school;
    print(school.title.toString());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadStudent();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:CustomAppBar(title: Text('About'),),
        body: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            schoolImage(),
            schoolDetails()
          ],
        )
    );
  }
  Widget schoolImage(){
    return Container(
      color: Colors.red,
      child: Image.asset('assets/icons/school.jpg',
        //height: 50,
        //width: 50,
      ),
    );
  }
  Widget schoolDetails(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    //width: 50,
                    //height: 50,
                    child: Image.asset(
                      'assets/icons/logo.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              Expanded(
                flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 05,),
                      Text(data.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 05,),
                      Text(data.add,style: TextStyle(fontSize: 15,color: Colors.grey),)
                    ],
                  )
              )
              ],
            ),
            Divider(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("Contacts",style: TextStyle(color: Colors.red,fontSize: 15),),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text('Office Number :',style: TextStyle(color: Colors.grey),)),

                      Expanded(child: Text('${data.ofc_number}',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text('Help Number :',style: TextStyle(color: Colors.grey),)),
                      Expanded(child: Text('${data.help_number}',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text('Email :',style: TextStyle(color: Colors.grey),)),
                      Expanded(child: Text('${data.email}',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text('School Code :',style: TextStyle(color: Colors.grey),)),

                      Expanded(child: Text('${data.school_code}',style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                  SizedBox(height: 15,),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
