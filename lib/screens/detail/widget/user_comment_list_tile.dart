// import 'package:flutter/material.dart';
// // import 'package:myshop/ui/products/edit_product_screen.dart';
// import '../../../models/comment_manager.dart';
// import 'package:provider/provider.dart';
// import '../../../models/comment.dart';

// class UserProductListTile extends StatelessWidget {
//   final Comment comment;
//   const UserProductListTile(
//     this.comment, {
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(comment.email + ': ' + comment.description),
//       leading: CircleAvatar(
//         // backgroundImage: NetworkImage(product.imageUrl),
//         backgroundColor: Colors.red,
//       ),
//       trailing: SizedBox(
//         width: 100,
//         child: Row(children: <Widget>[
//           buildEditButton(context),
//           buildDeleteButton(context),
//         ]),
//       ),
//     );
//   }

//   Widget buildDeleteButton(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.delete),
//       onPressed: () {
//         context.read<CommentsManager>().deleteComment(comment.id!);
//         ScaffoldMessenger.of(context)
//           ..hideCurrentSnackBar()
//           ..showSnackBar(
//             const SnackBar(
//               content: Text(
//                 'Product Deleted',
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           );
//       },
//       color: Theme.of(context).colorScheme.error,
//     );
//   }

//   Widget buildEditButton(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.edit),
//       onPressed: () {
//          Navigator.of(context).pushNamed(
//           EditCommentScreen.routeName,
//           arguments: comment.id,
//          );
//       },
//       color: Theme.of(context).colorScheme.primary,
//     );
//   }
// }
