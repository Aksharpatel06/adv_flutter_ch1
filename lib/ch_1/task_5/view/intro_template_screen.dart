import 'package:adv_flutter_ch1/ch_1/task_5/view/intro_plan_screen.dart';
import 'package:flutter/material.dart';

import 'componects/bottom_style.dart';

class IntroTemplateScreen extends StatelessWidget {
  const IntroTemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF2BD),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/img/img_1.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntroPlanScreen(),));
                      },
                      child: Text(
                        'Skip',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                  ),
                  SizedBox(width: 15,)
                ],
              ),
              Spacer(),
              introTextandButtom(
                  context: context,
                  height1: 10,
                  width1: 25,
                  height2: 10,
                  width2: 10,
                  height3: 10,
                  width3: 10,
                  title: "Select Template",
                  subtitle:
                      "Welcome to Our Platform! Where innovation meets creativity . Connect, collaborate, and create . Your journey begins here . Let's build something amazing together.",
                  buttomntext: "Next",
                  color: Colors.orange)
            ],
          ),
        ),
      ),
    );
  }
}
