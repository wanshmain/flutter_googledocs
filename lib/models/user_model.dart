import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class usermodel {
  final String profilepic;
  final String name;
  final String email;
  final String token;
  final String uid;
  usermodel({
    required this.profilepic,
    required this.name,
    required this.email,
    required this.token,
    required this.uid,
  });
  


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profilepic': profilepic,
      'name': name,
      'email': email,
      'token': token,
      'uid': uid,
    };
  }

  factory usermodel.fromMap(Map<String, dynamic> map) {
    return usermodel(
      profilepic: map['profilepic'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      token: map['token'] as String,
      uid: map['uid'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory usermodel.fromJson(String source) => usermodel.fromMap(json.decode(source) as Map<String, dynamic>);

  usermodel copyWith({
    String? profilepic,
    String? name,
    String? email,
    String? token,
    String? uid,
  }) {
    return usermodel(
      profilepic: profilepic ?? this.profilepic,
      name: name ?? this.name,
      email: email ?? this.email,
      token: token ?? this.token,
      uid: uid ?? this.uid,
    );
  }
}
