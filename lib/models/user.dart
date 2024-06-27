import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User(
      {required this.name,
      required this.bio,
      required this.weight,
      required this.height,
      required this.image,
      required this.passionList,
      required this.isSmoking,
      required this.isDrinking,
      required this.imageList,
      required this.distance});

  final String name;
  final String bio;
  final String weight;
  final String height;
  final String image;
  final List<String> passionList;
  final bool isSmoking;
  final bool isDrinking;
  final List<String> imageList;
  final String distance;

  factory User.fromJson(Map<String, dynamic> json) => User(
      name: json['name'],
      bio: '',
      height: '',
      image: '',
      weight: '',
      distance: '',
      imageList: [],
      isDrinking: false,
      isSmoking: true,
      passionList: []);

  Map<String, dynamic> toJson() => {};
}
