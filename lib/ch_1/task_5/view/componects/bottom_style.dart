import 'package:adv_flutter_ch1/ch_1/task_2/view/stepper_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_5/view/home_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_5/view/intro_plan_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_5/view/intro_working_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/intro_provider.dart';
import 'slider.dart';

Container introTextandButtom(
    {required BuildContext context,
    double? height1,
    double? width1,
    double? height2,
    double? width2,
    double? height3,
    double? width3,
    String? title,
    String? subtitle,
    String? buttomntext,
    Color? color}) {
  return Container(
    height: 300,
    width: double.infinity,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title!,
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),
          ),
          Text(
            subtitle!,
            style: TextStyle(height: 1.4,fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 5,),
          slider(
              height1: height1,
              width1: width1,
              height2: height2,
              width2: width2,
              height3: height3,
              width3: width3),
          SizedBox(height: 5,),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (color == Colors.orange) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IntroPlanScreen(),
                ));
              } else if (color == Colors.blueAccent) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IntroWorkingScreen(),
                ));
              } else {
                Provider.of<IntroProvider>(context, listen: false).setdata();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Home_screen(),
                ));
              }
            },
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(5)),
              child: Text(
                buttomntext!,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
