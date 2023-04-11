// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../models/comment.dart';
// import '../models/auth_token.dart';

// import '../services/firebase_service.dart';

// class CommentsService extends FirebaseService {
//   CommentsService([AuthToken? authToken]) : super(authToken);

//   Future<List<Comment>> fetchComments([bool filterByUser = false]) async {
//     final List<Comment> comments = [];
//     try {
//       final filters =
//           filterByUser ? 'orderBy ="creatorId"&equalTo="$userId"' : '';
//       final commentsUrl =
//           Uri.parse('$databaseUrl/comments.json?auth=$token&$filters');
//       final response = await http.get(commentsUrl);
//       final commentsMap = json.decode(response.body) as Map<String, dynamic>;
//       if (response.statusCode != 200) {
//         print(commentsMap['error']);
//         return comments;
//       }
//       commentsMap.forEach((commentId, comment) {
//         comments.add(
//           Comment.fromJson(
//             {
//               'id': commentId,
//               ...comment,
//             },
//           ),
//         );
//       });
//       return comments;
//     } catch (error) {
//       print(error);
//       return comments;
//     }
//   }

//   Future<Comment?> addComment(Comment comment) async {
//     try {
//       final url = Uri.parse('$databaseUrl/comments.json?auth=$token');
//       final response = await http.post(
//         url,
//         body: json.encode(
//           comment.toJson()
//             ..addAll({
//               'creatorId': userId,
//             }),
//         ),
//       );
//       if (response.statusCode != 200) {
//         throw Exception(json.decode(response.body)['error']);
//       }

//       return comment.copyWith(
//         id: json.decode(response.body)['name'],
//       );
//     } catch (error) {
//       print(error);
//       return null;
//     }
//   }

//   Future<bool> updateComment(Comment comment) async {
//     try {
//       final url =
//           Uri.parse('$databaseUrl/comments/${comment.id}.json?auth=$token');
//       final response =
//           await http.patch(url, body: json.encode(comment.toJson()));
//       if (response.statusCode != 200) {
//         throw Exception(json.decode(response.body)['error']);
//       }
//       return true;
//     } catch (error) {
//       print(error);
//       return false;
//     }
//   }

//   Future<bool> deleteComment(String id) async {
//     try {
//       final url = Uri.parse('$databaseUrl/comments/id.json?auth=$token');
//       final response = await http.delete(url);
//       if (response.statusCode != 200) {
//         throw Exception(json.decode(response.body)['error']);
//       }
//       return true;
//     } catch (error) {
//       print(error);
//       return false;
//     }
//   }
// }
