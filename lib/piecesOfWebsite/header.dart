import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshop_futter_web/customWidgets/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final RxInt activeIndex = 0.obs;
    return Container(
      width: width,
      height: 60,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellow, Colors.red])),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.settings,
                  size: 60,
                  color: Colors.black,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    poppins(
                        text: 'S.E.W',
                        size: 18,
                        fontweight: FontWeight.w500,
                        color: Colors.black),
                    poppins(
                        text: 'Sameer Enginering Work\'s',
                        size: 18,
                        fontweight: FontWeight.w500,
                        color: Colors.black)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < 5; i++)
                  GestureDetector(
                    onTap: () {
                      activeIndex.value = i;
                    },
                    child: Obx(
                      () => poppins(
                        text: _getNavItemText(i),
                        size: 18,
                        fontweight: FontWeight.w500,
                        color: activeIndex.value == i
                            ? Colors.white // Set your active color
                            : Colors.black,
                      ),
                    ),
                  ),
                //   poppins(
                //       text: 'Home',
                //       size: 18,
                //       fontweight: FontWeight.w500,
                //       color: Colors.black),
                // poppins(
                //     text: 'Services',
                //     size: 18,
                //     fontweight: FontWeight.w500,
                //     color: Colors.black),
                // poppins(
                //     text: 'Our Products',
                //     size: 18,
                //     fontweight: FontWeight.w500,
                //     color: Colors.black),
                // poppins(
                //     text: 'About Us',
                //     size: 18,
                //     fontweight: FontWeight.w500,
                //     color: Colors.black),
                // poppins(
                //     text: 'Contact',
                //     size: 18,
                //     fontweight: FontWeight.w500,
                //     color: Colors.black),
                Switch(
                  value: AdaptiveTheme.of(context).mode.isDark,
                  onChanged: (value) {
                    if (value) {
                      AdaptiveTheme.of(context).setDark();
                    } else {
                      AdaptiveTheme.of(context).setLight();
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _getNavItemText(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Services';
      case 2:
        return 'Our Products';
      case 3:
        return 'About Us';
      case 4:
        return 'Contact';
      default:
        return '';
    }
  }
}
