import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componects/bottom_style.dart';

class IntroWorkingScreen extends StatelessWidget {
  const IntroWorkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF2BD),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/img/img_3.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  CupertinoButton(child: Icon(CupertinoIcons.back,color: Colors.black,), onPressed: () {
                    Navigator.pop(context);
                  },),
                ],
              ),
              Spacer(),
              introTextandButtom(
                  context: context,
                  height1: 10,
                  width1: 10,
                  height2: 10,
                  width2: 10,
                  height3: 10,
                  width3: 25,
                  title: "Start Working",
                  subtitle:
                  "Your journey is just beginning. Share your experiences, Collaborate with peers, Achieve your goals, And enjoy the adventure.",
                  buttomntext: "Get Started",
                  color: Colors.redAccent)
            ],
          ),
        ),
      ),
    );
  }
}
