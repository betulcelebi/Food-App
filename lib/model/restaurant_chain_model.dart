class ChainModel {
  final String foodType;
  final bool isSelected;

  ChainModel({required this.foodType, required this.isSelected});
}
List<ChainModel> chainList=[
  ChainModel(foodType: "Burger", isSelected: true),
  ChainModel(foodType: "Fries", isSelected: false),
  ChainModel(foodType: "Coac", isSelected: false),
  ChainModel(foodType: "Meals", isSelected: false),
  ChainModel(foodType: "Ice-Cream", isSelected: false),
];