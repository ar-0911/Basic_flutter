//import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location{

  double? tolatitude;
  double? tolongitude;

  void getCurrentLocation() async{
    try{
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      tolatitude = position.latitude.toDouble();
      tolongitude = position.longitude.toDouble();
    }
    catch(e){
      print(e);
    }
  }
}