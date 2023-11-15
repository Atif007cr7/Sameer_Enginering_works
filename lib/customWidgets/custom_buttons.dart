import 'package:flutter/material.dart';
import 'package:get/get.dart';

// var width = MediaQuery.of(Get.context!).size.width;
// var height = MediaQuery.of(Get.context!).size.height;

Container loginAndOut({
  required String text,
  required void Function() onTap,
}) {
  return Container(
    width: 200,
    height: 50,
    decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 107, 90, 90),
          Color.fromARGB(255, 107, 69, 69)
        ]),
        borderRadius: BorderRadius.circular(20)),
    child: Center(
      child: InkWell(onTap: onTap, child: Text(text)),
    ),
  );
}
