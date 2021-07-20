import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mountassissi_clone/const/styles.dart';
import 'package:mountassissi_clone/models/model_student_profile.dart';
import 'package:mountassissi_clone/widgets/customAppbar.dart';




class StudentsProfiles extends StatefulWidget {
  const StudentsProfiles({Key? key}) : super(key: key);

  @override
  _StudentsProfilesState createState() => _StudentsProfilesState();
}

class _StudentsProfilesState extends State<StudentsProfiles> {


  Future<String> _loadASchoolAsset() async {
    return await rootBundle.loadString('assets/localJson/studentProfile.json');
  }
  var profile;
  bool load = false;
  Future loadStudent() async {
    String jsonString = await _loadASchoolAsset();
    final jsonResponse = jsonDecode(jsonString);
    StudentProfile _studentProfile = new StudentProfile.fromJson(jsonResponse);
    setState(() {
      load = true;
      profile = _studentProfile;
     // debugPrint('data title is ${profile.dob.toString()}');
    });
    profile = _studentProfile;
   // print(profile.studentName.toString());
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
      appBar: CustomAppBar(title: Text("Profile Details",style: Styles.textHomeStyle,),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            color: Colors.red,
            height: 200,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image:AssetImage('assets/icons/profiles/studentPic.png',) ,
                              fit: BoxFit.cover)
                      ),
                      child:null /*Image.asset(
                      'assets/icons/profiles/studentPic.png',
                      fit: BoxFit.contain,
                     ),*/
                  ),
                  SizedBox(height: 10,),
                  Text("${profile.studentName.toUpperCase()}",style: Styles.textHomeStyle,),
                  SizedBox(height: 10,),
                  Text('Student: ${profile.cls}\t ${profile.section.toUpperCase()}',style: Styles.textHomeStyle,),
                  SizedBox(height: 10,),
                  Text("Current Session",),
                  Text('2020 - 2021'),
                ],
              ),
            ),
          ),
          SizedBox(height: 05,),
          profileDetails()
        ],
      ),
    );
  }
  Widget profileDetails(){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General Details',style: TextStyle(color: Colors.red,fontSize: 15),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Addmission Number")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.addmissionNumber.toString()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //class
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Class")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.cls.toString()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Section")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.section.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //guardian name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Guardian Name")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.guardianName.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //Personal Details
            Text('Personal Details',style: TextStyle(color: Colors.red,fontSize: 15),),
            SizedBox(height: 20,),
            //gender
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Gender")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.gender.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //DOB
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("DOB")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.dob.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //blood group
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Blood Group")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.bloodGroup}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //Natinality
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Nationality")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.nationality.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            //address
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Address")),
                Expanded(
                    flex: 1,
                    child: Text("${profile.address.toUpperCase()}")),
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 20,),
            Text("Help"),
            SizedBox(height: 05,),
            Text('${profile.help.toString()}'),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
