import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountassissi_clone/const/styles.dart';

import 'login.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final GlobalKey<FormState> forgotKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController forgotController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.red
        ),
        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(05))
            ),
            child: IconButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Login()));
                },
                icon: Icon(Icons.arrow_back_outlined)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forgot Password',style: TextStyle(fontSize: 40),),
            SizedBox(height:150,),
            forgotForm(),
          ],
        ),
      ),
    );
  }
  Widget forgotForm(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: forgotKey,
        autovalidate: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Please input your username to reset your password:',style: Styles.textHomeStyle,),
            SizedBox(height: 10,),
            TextFormField(
              autovalidate: false,
              style: TextStyle(
                color: Colors.black,
              ),
              controller: forgotController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.none,
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.grey,fontFamily: 'signika',),
                  fillColor: Colors.grey[100],
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Colors.grey,style: BorderStyle.none
                      )
                  )
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> Login()));
                },
                child: Text('submit'.toUpperCase())),
          ],
        ),
      ),
    );
  }
}
