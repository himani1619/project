class recipe_listModel {

  //data Type
  int? FoodId;
  int? id;
  String? Food_Name;
  String?  imageURL;
  int? person;
  String? ingredients;
  String? Recipe;

// constructor
  recipe_listModel(
      {this.FoodId,
      this.id,
      this.Food_Name,
      this. imageURL,
      this.person,
      this.ingredients,
      this.Recipe});
      
  //method that assign values to respective datatype vairables
  recipe_listModel.fromJson(Map<String, dynamic> json) {
    FoodId = json['FoodId'];
    id = json['id'];
    Food_Name = json['Food_Name'];
     imageURL = json[' imageURL'];
    person = json['person'];
    ingredients = json['ingredients'];
    Recipe = json['Recipe'];
  }
}
