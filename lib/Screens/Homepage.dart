import 'package:flutter/material.dart';
import 'package:mountassissi_clone/const/styles.dart';
import 'package:mountassissi_clone/const/variables.dart';
import 'package:mountassissi_clone/widgets/customAppbar.dart';

import 'About.dart';



/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new CustomAppBar(title: Text(Variables.appTitle)),
       bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Favorites'),
              icon: Icon(Icons.favorite),
              backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
              title: Text('Music'),
              icon: Icon(Icons.music_note),
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              title: Text('Places'),
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              title: Text('News'),
              icon: Icon(Icons.library_books),
            ),
          ],
        ),
      body: Text('hello'),
    );
  }

}
*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedOpt;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOpt = "Home";
  }

  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: Text(selectedOpt.toString(),style: Styles.textHomeStyle),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: Colors.red,//colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() {
            _currentIndex = value;
            debugPrint(_currentIndex.toString());
            switch(_currentIndex)
            {
              case 0:
                selectedOpt = "Home";
                break;
              case 1:
                selectedOpt = "Courses";
                break;
              case 2:
                selectedOpt = "Time Table";
                break;
              case 3:
                selectedOpt = "Profle";
                break;
              default:
                selectedOpt = "Home";
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            title: Text('Courses'),
            icon: Icon(Icons.menu_book_sharp),
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            title: Text('Time Table'),
            icon: Icon(Icons.access_time),
              backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person),
              backgroundColor: Colors.yellowAccent
          ),
        ],
      ),
      body: (_currentIndex==0)? Home():(_currentIndex==1)? Courses():(_currentIndex==2)? TimeTable(): Profile()
    );
  }

  Widget Home(){
    return Container(
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                      width: 210,
                      height: 110,
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
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('mohammad altamash ahmad'.toUpperCase()),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text('mount1671'),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 0.8,
                              ),
                              Text('class - ix'.toUpperCase()),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 0.8,
                              ),
                              Text('c'.toUpperCase())
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Explore',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height:40),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/icons/house.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(height: 05,),
                                Text('Home Work',style: Styles.textHomeStyle,),
                              ],
                            )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/videoconference.png',
                                height: 50,
                                width: 50,
                              ),
                            ),

                            SizedBox(height: 05,),
                            Text('Online Class',style: Styles.textHomeStyle),
                          ],
                        )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/gallery.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text('Gallery',style: Styles.textHomeStyle),
                          ],
                        )),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/icons/calendar.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),

                                SizedBox(height: 05,),
                                Text('Events',style: Styles.textHomeStyle),
                              ],
                            )),
                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/beach-umbrella.png',
                                height: 50,
                                width: 50,
                              ),
                            ),

                            SizedBox(height: 05,),
                            Text('Holidays',style: Styles.textHomeStyle),
                          ],
                        )),
                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/notification.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text('Notifications',style: Styles.textHomeStyle),
                          ],
                        )),
                      ],
                    ),

                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/icons/bill.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),

                                SizedBox(height: 05,),
                                Text('Payments',style: Styles.textHomeStyle),
                              ],
                            )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/complain.png',
                                height: 50,
                                width: 50,
                              ),
                            ),

                            SizedBox(height: 05,),
                            Text('Complain',style: Styles.textHomeStyle),
                          ],
                        )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/attendance.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text('Attendance',style: Styles.textHomeStyle),
                          ],
                        )),
                      ],
                    ),

                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/icons/download.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),

                                SizedBox(height: 05,),
                                Text('Downloads',style: Styles.textHomeStyle),
                              ],
                            )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/results.png',
                                height: 50,
                                width: 50,
                              ),
                            ),

                            SizedBox(height: 05,),
                            Text('Results',style: Styles.textHomeStyle),
                          ],
                        )),

                        Expanded(child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/exam.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text('Exam',style: Styles.textHomeStyle),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
  Widget Courses(){
    return Container(
      //color: Colors.green,
      child: Center(
        child: Text('courses'),
      ),
    );
  }
  Widget TimeTable(){
    return Container(
      //color: Colors.yellowAccent,
      child: Center(
        child: Text('Time Table'),
      ),
    );
  }
  Widget Profile(){
    return Container(
      //color: Colors.blue,
      child: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            color: Colors.red,
            height: 200,
          ),
          SizedBox(height: 10,),
          Container(
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
                Text('mohammad altamash ahmad'.toUpperCase(),style: Styles.textHomeStyle,),
                SizedBox(height: 10,),
                Text('Student: class-ix c'.toUpperCase(),style: Styles.textHomeStyle,)

              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                //borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/icons/profiles/bank.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              onTap: (){
                                Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=> About()));
                              },
                            ),
                            SizedBox(height: 05,),
                            Text('School Profile',style: Styles.textHomeStyle,),
                          ],
                        )),

                    Expanded(child: Column(
                      children: [
                        Container(
                          //borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/icons/profiles/man-user.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(height: 05,),
                        Text('My Profile',style: Styles.textHomeStyle),
                      ],
                    )),

                    Expanded(child: Column(
                      children: [
                        Container(
                          //borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/icons/profiles/password.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(height: 05,),
                        Text('Change Password',style: Styles.textHomeStyle),
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                   /* Expanded(
                        child: Column(
                          children: [
                            Container(
                              //borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/icons/calendar.png',
                                height: 50,
                                width: 50,
                              ),
                            ),

                            SizedBox(height: 05,),
                            Text('Events',style: Styles.textHomeStyle),
                          ],
                        )),
                   */
                    Expanded(child: Column(
                      children: [
                        Container(
                          //borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/icons/profiles/logout.png',
                            height: 50,
                            width: 50,
                          ),
                        ),

                        SizedBox(height: 05,),
                        Text('Log Out',style: Styles.textHomeStyle),
                      ],
                    )),
                  /*  Expanded(child: Column(
                      children: [
                        Container(
                          //borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/icons/notification.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(height: 05,),
                        Text('Notifications',style: Styles.textHomeStyle),
                      ],
                    )),
                 */ ],
                ),

                Row()
              ],
            ),
          )
        ],
      )
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
    caption: base.caption!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
    button: base.button!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: defaultLetterSpacing,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: shrineBrown900,
    bodyColor: shrineBrown900,
  );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;