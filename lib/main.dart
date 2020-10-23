import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peliculas/src/pages/home_page.dart';
 
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  final style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(style);
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
      },
    );
  }
}