import "package:flutter/material.dart";
import 'dart:async';
import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() => runApp(MaterialApp(
//       title: "Hospital Management",
//       home: MyApp(),
//     ));

class MyAppss extends StatefulWidget {
  String val;
  MyAppss({required this.val});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppss> {
  String? _mySelection;

  final String url = "http://webmyls.com/php/getdata.php";

  List data=['na','ha']; //edited line,

  // Future<String> getSWData() async {
  //   var res = await http
  //       .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  //   var resBody = json.decode(res.body);

  //   setState(() {
  //     data = resBody;
  //   });

  //   print(resBody);

  //   return "Sucess";
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.getSWData();
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Hospital Management"),
      ),
      body: new Center(
        child: Column(
          children: [
          Text(widget.val)

            // Text(_mySelection);
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          ],
        ),
      ),
      
    );
  }
}