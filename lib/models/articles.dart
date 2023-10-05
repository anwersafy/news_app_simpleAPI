class Articles {
  String? title;
  String? description;
  String? urlToImage;

  Articles({
    required this.title,
    required this.description,
    required this.urlToImage,

  });

  // Articles.fromJson(Map<String, dynamic> json) {
  //   title = json['title'];
  //   description = json['description'];
  //   urlToImage = json['urlToImage'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();

  //   data['title'] = this.title;
  //   data['description'] = this.description;
  //   data['urlToImage'] = this.urlToImage;
  //   return data;
  // }
}
