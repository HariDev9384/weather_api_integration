import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:weather_api_integration/home.dart';

class WeatheModel {
  var url='https://api.openweathermap.org/data/2.5/weather?q=chennai&appid=caf4ea0d269d8ca337b9efb636b74a51#';
  fetchdata()async{
   var response= await http.get(Uri.parse(url));
   if(response.statusCode==200){
     var jd=json.decode(response.body);
     return Home_Page(main: jd);
   }
  }
}
