class Blog {
  String label;
  String imageUrl;
  // ignore: todo
  //TODO:Add Servings and Ingredients here

  Blog(
    this.label,
    this.imageUrl,
  );
  // ignore: todo
  //TODO: Add List<Recipe> here
  
  }
    // ignore: todo
  //TODO: Add Ingredient() here
  class Ingredient{
  double quantity;
    String measure;
    String name;
    Ingredient(
      this.quantity,
      this.measure,
      this.name,
    );




  }
  
 
  static List<Blog> samples = [
    Blog('Spaghetti and Meatballs', 'assets/images/food1.jpg'),
    Blog('Tomato Soup', 'assets/images/food2.jpg'),
    Blog('Grilled Cheese', 'assets/images/food3.jpg'),
    Blog('Chocolate Chips Cookies', 'assets/images/food4.jpg'),
    Blog('Taco Salad', 'assets/images/food5.jpeg'),
    Blog('Hawaii Pizza', 'assets/images/food6.jpeg'),
  ];
}
