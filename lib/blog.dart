class Blog {
  String label;
  String imageUrl;
  // ignore: todo
  //TODO:Add Servings and Ingredients here

  int servings;
  List<Ingredient> ingredients;

  Blog(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  // ignore: todo
  //TODO: Add List<Recipe> here

  static List<Blog> samples = [
    Blog('Spaghetti and Meatballs', 'assets/images/food1.jpg', 4,[
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'Sauce',),

      
    ]),
    Blog('Tomato Soup', 'assets/images/food2.jpg',  2,
    [
      Ingredient(1, 'can', 'Tomato Soup',),
    ]
    
    
    ),
    Blog('Grilled Cheese', 'assets/images/food3.jpg', 1, 
    [
      Ingredient(2, 'slice', 'Cheese',),
      Ingredient(2, 'slice', 'Bread',),
    ]),
    Blog('Chocolate Chips Cookies', 'assets/images/food4.jpg',24,
    [
      Ingredient(4, 'cups', 'Floor',),
      Ingredient(2, 'cups', 'sugar',),
      Ingredient(0.5, 'cups', 'Chocolate chips',),
    ]
    ),
    Blog('Taco Salad', 'assets/images/food5.jpeg',1,
    [
Ingredient(4, 'oz', 'nachos',),
Ingredient(3, 'oz', 'taco Meat',),
Ingredient(0.5, 'cup', 'cheese',),
Ingredient(0.25, 'cup', 'Chopped tomatoes',),


    ]),
    Blog('Hawaii Pizza', 'assets/images/food6.jpeg',4,
    [
     Ingredient(1, 'item', 'Pizza',),
     Ingredient(1, 'cup', 'pineapple',),
     Ingredient(8, 'oz', 'ham',),
    ]),
  ];
}

// ignore: todo
//TODO: Add Ingredient() here
class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
