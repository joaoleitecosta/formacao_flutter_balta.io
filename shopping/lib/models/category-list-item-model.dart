class CategoryListItemModel {
  String id;
  String title;
  String tag;

  CategoryListItemModel({this.id, this.title, this.tag});

  CategoryListItemModel.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.title = json["title"];
    this.tag = json["tag"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data["id"] = this.id;
    data["title"] = this.title;
    data["tag"] = this.tag;

    return data;
  }
}
