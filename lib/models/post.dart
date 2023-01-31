class Posts {
  Posts({
    required this.id,
    required this.title,
    required this.desc,
    required this.img,
    // required this.avatar,
    required this.like,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String title;
  String desc;
  String img;
  // String avatar;
  String like;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        id: json["_id"],
        title: json["title"],
        desc: json["desc"],
        img: json["img"],
        // avatar: json["img"],
        like: json["price"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "desc": desc,
        "img": img,
        // "img": avatar,
        "price": like,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
