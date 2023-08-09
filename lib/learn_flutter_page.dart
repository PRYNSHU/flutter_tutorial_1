import 'package:flutter/material.dart';

class learnFlutter extends StatefulWidget {
  const learnFlutter({super.key});

  @override
  State<learnFlutter> createState() {
    return learnFlutterState();
  }
}

class learnFlutterState extends State<learnFlutter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/a.jpg',
                  width: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 3,
                ),
          
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  color: Colors.amber,
                  child: const Center(
                    child:  Text(
                      "its a widget",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  debugPrint("elevated button");
                }, 
                child: const Text("ele button")),
                OutlinedButton(onPressed: (){
                  debugPrint("Outline button");
                }, 
                child: const Text("outline button")),
                TextButton(onPressed: (){
                  debugPrint("Text button");
                }, 
                child: const Text("text button")),

                Image.network('https://images.livemint.com/img/2020/01/28/1600x900/image27_1564999849350_1580198991499.png'),

              ],
            ),
          )),
    );
  }
}
