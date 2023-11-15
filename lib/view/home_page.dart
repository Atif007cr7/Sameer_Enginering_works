import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshop_futter_web/customWidgets/custom_buttons.dart';
import 'package:workshop_futter_web/customWidgets/custom_text.dart';
import 'package:workshop_futter_web/piecesOfWebsite/header.dart';

import '../controller/home_controller.dart';
import '../model/home_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ListController listController = Get.put(ListController());
  final ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        // appBar: AppBar(
        //   title: const Center(child: Text('Sameer Enginering Works')),
        //   actions: [

        //   ],
        //   // actions: [Title(color: Colors.red, child: const Text('Home Page'))],
        // ),
        body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Header(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: height / 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.asset('assets/home.png')),
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CarouselSlider.builder(
                        itemCount: listController.items.length,
                        options: CarouselOptions(
                          height: height,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          ListItem currentItem = listController.items[index];
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  currentItem.imageUrl,
                                  height: height / 2.5,
                                  width: width / 2,
                                ),
                                // const SizedBox(height: 10),
                                Text(
                                  currentItem.title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  currentItem.subtitle,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height / 2,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Adjust the number of columns as needed
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: imageController.images.length,
                itemBuilder: ((context, index) {
                  return Image.network(
                    imageController.images[index].imageUrl,
                    fit: BoxFit.fitWidth,
                    height: 300,
                    width: 300,
                  );
                })),
          ),
          Container(
            height: height / 2,
            decoration: const BoxDecoration(),
            child: Row(
              children: [poppins(text: '')],
            ),
          )
        ],
      ),
    ));
  }
}
