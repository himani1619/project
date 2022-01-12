class Recipe_list {
  int FoodId;
  int id;
  String FoodName;
  String url;
  String Recipe;

  Recipe_list.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        img = json['img'],
        nickname = json['nickname'];

  Map toJson() {
    return {'id': id, 'name': name, 'img': img, 'nickname': nickname};
  }
}