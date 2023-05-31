class ListNewsModel {
  bool? success;
  Null? message;
  Data? data;

  ListNewsModel({this.success, this.message, this.data});

  ListNewsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? idCategory;
  String? Category;
  String? CategoryThumb;
  String? CategoryDescription;
  List<Posts>? posts;

  Data(
      {this.idCategory,
      this.Category,
      this.CategoryThumb,
      this.CategoryDescription,
      this.posts});

  Data.fromJson(Map<String, dynamic> json) {
    idCategory = json['idCategory'];
    Category = json['Category'];
    CategoryThumb = json['CategoryThumb'];
    CategoryDescription = json['CategoryDescription'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCategory'] = this.idCategory;
    data['Category'] = this.Category;
    data['CategoryThumb'] = this.CategoryThumb;
    data['CategoryDescription'] = this.CategoryDescription;
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String? idCategory;
  String? CategoryThumb;
  String? Category;
  String? thumbnail;

  Posts({this.idCategory, this.CategoryThumb, this.Category, this.thumbnail});

  Posts.fromJson(Map<String, dynamic> json) {
    idCategory = json['idCategory'];
    CategoryThumb = json['CategoryThumb'];
    Category = json['Category'];
    thumbnail = json['thumbnail'];
  }

  get title => null;

  get description => null;

  get link => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCategory'] = this.idCategory;
    data['CategoryThumb'] = this.CategoryThumb;
    data['Category'] = this.Category;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
