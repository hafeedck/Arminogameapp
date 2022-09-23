import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

class Welcome {
  Welcome({
    this.id,
    this.name,
    this.cover,
  });

  int? id;
  String? name;
  Cover? cover;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        name: json["name"],
        cover: json["cover"] == null ? null : Cover.fromJson(json["cover"]),
      );
}

class Cover {
  Cover({
    this.id,
    this.url,
  });

  int? id;
  String? url;

  factory Cover.fromJson(Map<String, dynamic> json) => Cover(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}
