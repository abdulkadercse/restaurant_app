import 'dart:ui';

class SliderModel {
  String? title;
  String? des;
  String? images;
  String? logo;
  Color? startColor;
  Color? endColor;

  SliderModel({
      this.title,
      this.des,
      this.images,
      this.logo,
      this.startColor,
      this.endColor
  });
}

List<SliderModel> sliderDetails = [
  SliderModel(
    title: "Flash Offer",
    des: "We are here with the best \ndeserts intown.",
    images: "assets/burgers1.png",
    logo: "assets/king.png",
    startColor: const Color(0xffFF9F06),
    endColor: const Color(0xffFFE1B4),
  ),

  SliderModel(
    title: "Flash Offer",
    des: "We are here with the best \ndeserts intown.",
    images: "assets/burgers1.png",
    logo: "assets/king.png",
    startColor:  const Color(0xffFF9F06),
    endColor: const Color(0xffFFE1B4),
  ),
  SliderModel(
    title: "Flash Offer",
    des: "We are here with the best \ndeserts intown.",
    images: "assets/burgers1.png",
    logo: "assets/king.png",
    startColor:  const Color(0xffFF9F06),
    endColor: const Color(0xffFFE1B4),
  ),
];
