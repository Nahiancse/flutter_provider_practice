import "package:flutter/material.dart";
import 'package:provider/provider.dart';


void main() => runApp(MaterialApp(
      title: "Hospital Management",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>AppData(),
      builder: (context,child){
        return Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('naaaaaaahian'),     
              // Text(Provider.of<AppData>(context).name),     
              // Text(context.watch<AppData>().name),     
              Consumer<AppData>(
                builder:(context,value,child){
                   return Text(value.name);
                }
              ),
                   
              Text('naaaaaaahian'),     
              Text('naaaaaaahian'),     
              Text('naaaaaaahian'),     
              Text('naaaaaaahian'),     
                 Consumer<AppData>(
                builder:(context,value,child){
                   return Text(value.name);
                }
              ),
              //  Text(context.watch<AppData>().name),
              // Text(Provider.of<AppData>(context).name),      
            ],
          ),
        ),
        
      );
      }
      
    );
  }
}


class AppData with ChangeNotifier{
String _name='nahians ';
void changeData(String data){
  _name=data;
  notifyListeners();
}
String get name=>_name;  
}