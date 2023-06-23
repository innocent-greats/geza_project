import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/data/gallery.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({super.key});

  @override
  _GalleryWidgetState createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: GalleryList.list().length,
        itemBuilder: (context, index) {
          Gallery gallery = GalleryList.list()[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: Dimensions.heightSize),
            child: Image.asset(
              gallery.image,
              height: 220,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
