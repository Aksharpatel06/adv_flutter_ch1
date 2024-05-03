import 'package:flutter/material.dart';

import '../../../../../utils/golbal_variable.dart';
import '../../../modal/gallerymodal.dart';
import '../../../modal/imgdata.dart';

Expanded galleryImges() {
  return Expanded(
    child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: galleryimglist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisExtent: 175),
        itemBuilder: (context, index) {
          galleryModal = GalleryModal.setdata(galleryimglist[index]);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 110,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      galleryModal!.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(galleryModal!.name, style: const TextStyle(fontWeight: FontWeight
                    .bold,),),
                Text(galleryModal!.numberofimg.toString(), style: const TextStyle(fontWeight: FontWeight
                    .w200, fontSize: 12,height: 0.9),),
              ],
            ),
          );
        }
    ),
  );
}
