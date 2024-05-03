import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modal/imgdata.dart';

class GalleryHideScreen extends StatelessWidget {
  const GalleryHideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoButton(onPressed: () {
          Navigator.pop(context);
        },child: Icon(CupertinoIcons.back)),
        title: Text('Hide Images'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            children: [
              subTitleText(),
              SizedBox(height: 15,),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: hiddenimageslist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, mainAxisExtent: 90),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(hiddenimageslist[index],),fit: BoxFit.cover)),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row subTitleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          'Select',
          style: TextStyle(
              fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
