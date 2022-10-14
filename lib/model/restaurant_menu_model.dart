class RestaurantMenuModel {
  final String images;
  final String foodNames;
  final String foodDescription;
  final String foodStar;
  final String foodRate;
  final String foodPrice;
  final bool buttonSelected;
  final String buttonIconLeft;
  final String buttonIconRight;
  final String buttonText;

  RestaurantMenuModel({
    required this.images,
    required this.foodNames,
    required this.foodDescription,
    required this.foodStar,
    required this.foodRate,
    required this.foodPrice,
    required this.buttonSelected,
    required this.buttonIconLeft,
    required this.buttonIconRight,
    required this.buttonText,
  });
}

List<RestaurantMenuModel> menuItems = [
  RestaurantMenuModel(
      images: "assets/chickenburger",
      foodNames: "Chicken Burger",
      foodDescription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      foodStar: "assets/mstar.png",
      foodRate: "4.5",
      foodPrice: "\$ 7",
      buttonSelected: true,
      buttonIconLeft: "-",
      buttonIconRight: '+',
      buttonText: "1"),
  RestaurantMenuModel(
      images: "assets/potato.png",
      foodNames: "Potato Corn Burger",
      foodDescription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      foodStar: "assets/mstar.png",
      foodRate: "4",
      foodPrice: "\$ 8",
      buttonSelected: false,
      buttonIconLeft: "-",
      buttonIconRight: "+",
      buttonText: "0"),
  RestaurantMenuModel(
    images: "assets/supreme.png",
    foodNames: "Supreme Veggie Burger",
    foodDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    foodStar: "assets/mstar.png",
    foodRate: "4.3",
    foodPrice: "\$ 6",
    buttonSelected: false,
    buttonIconLeft: "-",
    buttonIconRight: "+",
    buttonText: "0",
  ),
  RestaurantMenuModel(
      images: "assets/pizzaburger.png",
      foodNames: "Pizza Burger",
      foodDescription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      foodStar: "assets/mstar.png",
      foodRate: "4.5",
      foodPrice: "\$ 10",
      buttonSelected: false,
      buttonIconLeft: "-",
      buttonIconRight: "+",
      buttonText: "0"),
];
