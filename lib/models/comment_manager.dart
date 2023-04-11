// import 'package:flutter/foundation.dart';

// import '../models/auth_token.dart';
// import '../models/comment.dart';

// import '../services/comment_service.dart';

// class CommentsManager with ChangeNotifier {
//   List<Comment> _items = [];

//   final CommentsService _commentsService;

//   CommentsManager([AuthToken? authToken])
//       : _commentsService = CommentsService(authToken);

//   set authToken(AuthToken? authToken) {
//     _commentsService.authToken = authToken;
//   }

//   Future<void> fetchComments([bool filterByUser = false]) async {
//     _items = await _commentsService.fetchComments(filterByUser);
//     notifyListeners();
//   }

//   Future<void> addComment(Comment comment) async {
//     final newComment = await _commentsService.addComment(comment);
//     if (newComment != null) {
//       _items.add(newComment);
//       notifyListeners();
//     }
//   }

//   Future<void> updatecomment(Comment comment) async {
//     final index = _items.indexWhere((item) => item.id == comment.id);
//     if (index >= 0) {
//       if (await _commentsService.updateComment(comment)) {
//         _items[index] = comment;
//         notifyListeners();
//       }
//     }
//   }

//   Future<void> deleteComment(String id) async {
//     final index = _items.indexWhere((item) => item.id == id);
//     Comment? existingProuct = _items[index];
//     _items.removeAt(index);
//     notifyListeners();
//     if (!await _commentsService.deleteComment(id)) {
//       _items.insert(index, existingProuct);
//       notifyListeners();
//     }
//   }


//   int get itemCount {
//     return _items.length;
//   }

//   List<Comment> get items {
//     return [..._items];
//   }
// }