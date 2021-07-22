import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp_ui/DataModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<int> vals = [];
  late List<int> add = [7, 8];
  late List<String> vals2 = [];
  void retrieveID() {
    int i;
    for (i = 0; i < DataModel().providerU.length; i++) {
      if (DataModel().speciality[i].name.toString() == "developer") {
        print(i.toString());
        vals2.add(DataModel().providerU[i].getName.toString());
        vals.add(i);
      } else {
        print("false");
      }
    }
    vals.addAll(add);
    print(vals);
    print(vals2);
    for (int j = 0; j >= DataModel().providerU.length; j++) {
      print(DataModel().providerU[j].getName.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    DataModel().addUsers();
    retrieveID();
    print(vals2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: vals2.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/John-Doe.jpg",
                            height: 70,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(vals2[index],style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          ),),
                          /*DataModel().speciality[index].name.toString()*/
                        ],
                      )),
                );
              },
            )),
      ),
    );
  }
}
