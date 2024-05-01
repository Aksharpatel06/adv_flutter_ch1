import 'package:flutter/material.dart';

import 'componects/bottom_style.dart';

class IntroPlanScreen extends StatelessWidget {
  const IntroPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF2BD),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/img/img_1.png'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ))
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
      ),
    );
  }
}
