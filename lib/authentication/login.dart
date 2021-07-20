import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mountassissi_clone/Screens/Homepage.dart';
import 'package:mountassissi_clone/authentication/forgetPassword.dart';
import 'package:mountassissi_clone/const/styles.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0))
              ),
              child: new Image.asset("assets/icons/school.jpg",
                fit: BoxFit.cover,height:350,width: MediaQuery.of(context).size.width,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: customLogin(),
            )
          ],
        ),
      ),
    );
  }
  Widget customLogin(){
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
          )
      ),
      child: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                flex: 1,
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
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('iqra global school'.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text('Sharif Colony,Patna - 800006',style: Styles.textHomeStyle,)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome',style: TextStyle(fontSize: 15),),
                    SizedBox(height: 05,),
                    Text('Please login to continue',style: Styles.textHomeStyle,),
                    SizedBox(height: 20,),
                    loginForm(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget loginForm(){
    return Form(
      key: loginKey,
      autovalidate: true,
      child: Column(
        children: [
          TextFormField(
            autovalidate: false,
            style: TextStyle(
              color: Colors.black,
            ),
            controller: usernameController,
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
          TextFormField(
            autovalidate: false,
            style: TextStyle(
              color: Colors.black,
            ),
            controller: passwordController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.none,
            decoration: InputDecoration(
                hintText: 'Password',
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
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> HomePage()));
                },
                child: Text('Login')),
          ),
          SizedBox(height: 20,),
          //Text('Forget password?',style: TextStyle(color: Colors.red,fontSize: 15),)
          RichText(
              text:new TextSpan(
                text: 'Forgot Password',
                style: TextStyle(color: Colors.red,fontSize: 15),
                recognizer: new TapGestureRecognizer()..onTap=(){
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=> ForgotPassword()));
                }
              )
          )
        ],
      ),
    );
  }
}
