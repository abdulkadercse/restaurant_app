import 'dart:ui';

class ProductModel{

  String? title;
  String? location;
  String? image;
  bool ? isNewProduct;
  String ? discountPrice;
  Color? bgColor;
  ProductModel({this.title, this.location, this.image, this.isNewProduct, this.discountPrice, this.bgColor});

}

List<ProductModel> productList = [
  ProductModel(
    title: 'Chicken Biryani',
    location: "Ambrosia Hotel & Restaurant",
    image: "assets/chiken.png",
    isNewProduct: true,
    discountPrice: "10%",
    bgColor:const Color(0xffFF9F06),
  ),
  ProductModel(
    title: 'Sauce Tonkatsu',
    location: "Handi Restaurant, Chittagong",
    image: "assets/sauce.png",
    isNewProduct: false,
    discountPrice: "20%",
    bgColor:const Color(0xff32B768),
  ),

  ProductModel(
    title: 'burger',
    location: "Ambrosia Hotel & Restaurant",
    image: "assets/burgers1.png",
    isNewProduct: true,
    discountPrice: "30%",
    bgColor:const Color(0xffFF9F06),
  ),




];