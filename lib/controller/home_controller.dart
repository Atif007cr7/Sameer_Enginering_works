// list_controller.dart
import 'package:get/get.dart';
import 'package:workshop_futter_web/model/home_model.dart';

class ListController extends GetxController {
  final List<ListItem> items = [
    ListItem(
      imageUrl: 'assets/home/hedelburge_1.jpg',
      title: 'HEDALBURGE',
      subtitle: 'REPAIRE AND NEW PARTS',
    ),
    ListItem(
      imageUrl: 'assets/home/komori.jpg',
      title: 'KOMORI',
      subtitle: 'REPAIRE AND NEW PARTS',
    ),
    ListItem(
      imageUrl: 'assets/home/roland.jpg',
      title: 'ROLAND',
      subtitle: 'REPAIRE AND NEW PARTS',
    ),
  ];
}

class ImageController extends GetxController {
  final List<ImageModel> images = [
    ImageModel(imageUrl: 'assets/home/parts.jpg'),
    ImageModel(imageUrl: 'assets/home/part2.jpg'),

    ImageModel(imageUrl: 'assets/home/part3.jpg'),

    ImageModel(imageUrl: 'assets/home/part4.jpg'),

    // Add more ImageModel instances as needed
  ];
}
