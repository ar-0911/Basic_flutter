import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('images/facepic.png'),
                ),
              Text(
                  'Aditya Ramguru',
                style: TextStyle(
                  fontFamily: 'Smooch',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 150.0,
                child: Divider(            // line like hr in html
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Card(                          //Card does not have padding property
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.add_ic_call,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+91 888 423 0038',
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.attach_email_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      'aditya.ramguru@gmail.com',
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: const <Widget>[
Icon(
Icons.add_ic_call,
color: Colors.black,
),
SizedBox(
width: 12.5,
),
Text(
'+91 888 423 0038',
style: TextStyle(
color: Colors.teal,
fontFamily: 'Source Sans Pro',
fontSize: 20
),
)
],
),*/

