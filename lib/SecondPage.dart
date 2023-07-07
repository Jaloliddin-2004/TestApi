
import 'package:flutter/material.dart';
import 'package:flutter_application_7/Vaqt.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
    set 
    (http.Response response) async {}

    @override
    Future<Widget> build(BuildContext context) async {
      String apiUrl = TimeModel();
      return Scaffold(
        body: FutureBuilder(future: apiUrl (' http://api.aladhan.com/v1/calendarByAddress/:year/:month') ,
    http.Response response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    
    String responseBody = response.body;
    Map<String, dynamic> data = jsonDecode(responseBody);
    List<dynamic> prayerTimes = data['results']['datetime'];
    for (var prayerTime in prayerTimes) {
      String prayerName = prayerTime['times']['Imsak'];
      print(prayerName);
    }
  } else {
    
    print('Request failed with status: ${response.statusCode}.');
  }
      ));
    }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_application_7/Home.dart';
import 'package:flutter_application_7/getservice.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
            
            )
          ]),
    );
  }
}
*/
