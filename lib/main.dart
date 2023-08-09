import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/home_page.dart';
import 'package:flutter_tutorial1/learn_flutter_page.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item("good ", 1),
              item("BHUMIKA RAI", 2),
              item("good evening", 3),
              item("good evening", 4),
              item("good evening", 5),
            ],
          ),
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  final String st;
  final int s;
  // int s; -> can't define

  const item(this.st, this.s); //constructor

  @override
  Widget build(BuildContext context) {
    return Text("$st : $s");
  }
}
//////////////////////////////////////////

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget{
  const Rootpage({super.key});
  @override
  State<StatefulWidget> createState() {
   return RootPageState();
  }
}

class RootPageState extends State<Rootpage>{
  int current =0;
  int count =0;
  List<Widget> pages = [homePage() , learnFlutter()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEMLO GUYS"),
      ),

      body: pages[current],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: NavigationBar(destinations: const [

        NavigationDestination(icon: Icon(Icons.add), label: "add"),
        NavigationDestination(icon: Icon(Icons.home), label: "home"),
      ],
      onDestinationSelected: (int index) {
        current = index;
        setState(() {
          count =0;
        });
      },
      selectedIndex: current,
      )

    );

  }
}


