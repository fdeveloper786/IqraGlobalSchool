import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountassissi_clone/Screens/studentProfile.dart';
import 'package:mountassissi_clone/const/styles.dart';
import 'package:mountassissi_clone/widgets/customAppbar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  final GlobalKey<FormState> change_passwordKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController change_passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: Text('Change Password',style: Styles.textHomeStyle,),),
    body:Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Change Password',style: TextStyle(color: Colors.red,fontSize: 15),),
          SizedBox(height: 05,),
          Text('Please input a new password',style: Styles.textHomeStyle),
          SizedBox(height: 20,),
          resetPassword(),

        ],
      ),
    )
    );
  }
  Widget resetPassword(){
    return Form(
      key: change_passwordKey,
      autovalidate: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            autovalidate: false,
            style: TextStyle(
              color: Colors.black,
            ),
            controller: change_passwordController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.none,
            decoration: InputDecoration(
                hintText: 'New Password',
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
          Text('For a strong password:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          SizedBox(height: 10,),

          Text('Add More thatn 8 characters',style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),

          Text('Add numbers',style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),

          Text('Add UpperCase',style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),

          Text('Add Symbols',style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> StudentsProfiles()));
              },
              child: Text('Change Password'.toUpperCase())),
        ],
      ),
    );
  }
}
