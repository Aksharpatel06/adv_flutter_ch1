import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isdark)?ThemeMode.dark:ThemeMode.light,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
            onSecondary: Colors.red,
            tertiaryContainer: Colors.red
          )
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
            onSecondary: Colors.blue,
          )
      ),
      home: Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:150),
          child: Container(
            height: 500,
            width: 350,
            alignment: Alignment.center,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                    child: Text("It\'s a simple example of dark theme",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 22),),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isdark = false;
                      });
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: (isdark)?Colors.redAccent:Colors.amber,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text('Light color',style: TextStyle(fontSize: 22,color:isdark ? Colors.white:Colors.black),),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isdark = true;
                      });
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: (!isdark)?Colors.redAccent:Colors.amber,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text('Dark Color',style: TextStyle(fontSize: 22,color:isdark ? Colors.white:Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


bool isdark = false;