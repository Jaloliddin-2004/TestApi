import 'dart:convert';

import 'package:flutter_application_7/Vaqt.dart';

class TimeService{
  get http => null;

  Future<List<TimeModel>> getPosts()async{
  try  {
      var response =await http.get(Uri.parse("https://api.aladhan.com/v1/calendarByAddress/2017/4?address=Sultanahmet%20Mosque,%20Istanbul,%20Turkey&method=2"),);
      print(response.statusCode);

      var res = jsonDecode(response.body);
      if(response.statusCode == 200){
        
        return res;
      }
      return [];
    }catch(e){
      print(e);
      return[];
    }
  }

  

  
}