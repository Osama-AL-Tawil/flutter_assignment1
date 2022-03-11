import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("عاصمة فلسطين")),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Image.asset(
              "assets/images/q1.jpg",
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 5),
            const Text(
              "مدينة القدس",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
            ),
            CardBuilder("الإسم", "القدس"),
            CardBuilder("المساحة", "125 كم"),
            CardBuilder("السكان", "358000 نسمة"),
            CardBuilder("الدولة", "فلسطين"),
            CardBuilder("اسم الطالب", "أسامة فايز الطويل"),
          ],
        ),
      ),
    );
  }
}

class CardBuilder extends StatelessWidget {
  String title;
  String description;

  CardBuilder(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
          children: [
            Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(title, style: TextStyle(fontSize: 25))),
                margin: EdgeInsets.all(3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color(0x66171717), width: 1))),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color(0x66171717), width: 1))),
            )
          ],
        ),
        color: const Color(0xFFEAEAEA),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0x66171717), width: 1)));
  }
}
