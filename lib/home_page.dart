import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/learn_flutter_page.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {

          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return learnFlutter();
            }),
          );
          
        },
        child: const Text("learn flutter"),
      ),
    );
  }
}
