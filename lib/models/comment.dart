// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Comment {
//   final String? id;
//   final String email;
//   final String description;
//   final double score;
//   Comment({
//     this.id,
//     required this.email,
//     required this.description,
//     required this.score,
//   });

//   Comment copyWith({
//     String? id,
//     String? email,
//     String? description,
//     double? score,
//   }) {
//     return Comment(
//       id: id ?? this.id,
//       email: email ?? this.email,
//       description: description ?? this.description,
//       score: score ?? this.score,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'email': email,
//       'description': description,
//       'score': score,
//     };
//   }

//   static Comment fromJson(Map<String, dynamic> json) {
//     return Comment(
//       id: json['id'],
//       email: json['email'],
//       description: json['description'],
//       score: json['score'],
//     );
//   }
// }
