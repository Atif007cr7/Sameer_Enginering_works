// list_item.dart

class ListItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  ListItem(
      {required this.imageUrl, required this.title, required this.subtitle});
}

class ImageModel {
  final String imageUrl;

  ImageModel({required this.imageUrl});
}
