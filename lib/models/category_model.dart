class CategoryModel {
  String? breakfastName;
  String? breakfastImage;
  String? breakfastCategory;
  int? breakfastId;
  int? breakfastPrice;
  double? breakfastRating;

  CategoryModel(
      {required this.breakfastName,
        required this.breakfastImage,
        required this.breakfastPrice,
        required this.breakfastCategory,
        required this.breakfastRating,
        required this.breakfastId});
}