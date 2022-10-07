class PopularModel {
  late final String image;
  late final String? title;
  late final String? desc;
  late final int price;
 late bool favourite;
 PopularModel({
    required this.image,
   required this.title,
    this.desc="This is used for testing purpose. and i am pretty sure that it will be done. as soon as possioble",
   required this.price,
   this.favourite=false
});

}