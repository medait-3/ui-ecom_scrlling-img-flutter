// data.dart

class Product {
  final String name;
  final String prix;
  final String image;
  final List<String> img;

  Product({
    required this.name,
    required this.prix,
    required this.image,
    required this.img,
  });
}

final List<Product> productList = [
  Product(
    name: "Jacket",
    prix: "33",
    image: "assets/jacket/1.png",
    img: [
      "assets/jacket/1.png",
      "assets/jacket/2.png",
      "assets/jacket/3.png",
    ],
  ),
  Product(
    name: "T-Shirt",
    prix: "13",
    image: "assets/tshirt/2.png",
    img: [
        "assets/tshirt/1.png",
        "assets/tshirt/2.png",
    ],
  ),
  Product(
    name: "Cat-eye Sunglasses",
    prix: "43",
    image: "assets/glasses/glasses3.png",
    img: [
      "assets/glasses/glasses1.png",
      "assets/glasses/glasses4.png",
      "assets/glasses/glasses2.png",
      "assets/glasses/glasses3.png",
      "assets/glasses/glasses5.png",
    ],
  ),
];
