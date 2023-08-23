import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation (){
    Location L = Location();
    L.getCurrentLocation();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
