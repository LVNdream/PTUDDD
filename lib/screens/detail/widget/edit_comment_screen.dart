// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../models/comment.dart';
// import '../../../shared/dialog_utils.dart';
// import '../../../models/comment_manager.dart';

// class EditCommentScreen extends StatefulWidget {
//   static const routeName = '/edit-comment';
//   EditCommentScreen(Comment? comment, {super.key}) {
//     if (comment == null) {
//       this.comment = Comment(
//         id: null,
//         email: '',
//         description: '',
//         score: 0,
//       );
//     } else {
//       this.comment = comment;
//     }
//   }
//   late final Comment comment;

//   @override
//   State<EditCommentScreen> createState() => _EditCommentScreenState();
// }

// class _EditCommentScreenState extends State<EditCommentScreen> {
//   // final _imageUrlController = TextEditingController();
//   // final _imageUrlFocusNode = FocusNode();
//   final _editForm = GlobalKey<FormState>();
//   late Comment _editedComment;
//   var _isLoading = false;
//   bool _isValidImageUrl(String value) {
//     return (value.startsWith('http') ||
//         value.startsWith('https') &&
//             (value.endsWith('.png') ||
//                 value.endsWith('.jpg') ||
//                 value.endsWith('.jpeg')));
//   }

//   // @override
//   // void initState() {
//   //   _imageUrlFocusNode.addListener(() {
//   //     if (!_imageUrlFocusNode.hasFocus) {
//   //       if (!_isValidImageUrl(_imageUrlController.text)) {
//   //         return;
//   //       }
//   //       setState(() {});
//   //     }
//   //   });
//   //   _editedProduct = widget.product;
//   //   _imageUrlController.text = _editedProduct.imageUrl;
//   //   super.initState();
//   // }

//   // @override
//   // void dispose() {
//   //   _imageUrlController.dispose();
//   //   _imageUrlFocusNode.dispose();
//   //   super.dispose();
//   // }

//   Future<void> _saveForm() async {
//     final isValid = _editForm.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     _editForm.currentState!.save();
//     setState(() {
//       _isLoading = true;
//     });
//     try {
//       final commentsManager = context.read<CommentsManager>();
//       if (_editedComment.id != null) {
//         await commentsManager.updatecomment(_editedComment);
//       } else {
//         await commentsManager.addComment(_editedComment);
//       }
//     } catch (error) {
//       await showErrorDialog(context, 'Something went wrong');
//     }
//     setState(() {
//       _isLoading = false;
//     });
//     if (mounted) {
//       Navigator.of(context).pop();
//     }
//   }

//   Future<void> showErrorDialog(BuildContext context, String message) {
//     return showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text('An Error Occurred!'),
//         content: Text(message),
//         actions: <Widget>[
//           TextButton(
//             child: const Text('Okay'),
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Comment'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.save),
//             onPressed: _saveForm,
//           ),
//         ],
//       ),
//       body: _isLoading
//           ? const Center(
//               child: CircularProgressIndicator(),
//             )
//           : Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Form(
//                 key: _editForm,
//                 child: ListView(
//                   children: <Widget>[
//                     buildEmailField(),
//                     buildDescriptionField(),
//                     buildScoreField(),
//                     // buildProductPreview(),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }

//   // Dinh nghia cac truong co form nhap lieu
//   TextFormField buildEmailField() {
//     return TextFormField(
//       initialValue: _editedComment.email,
//       decoration: const InputDecoration(labelText: 'Email'),
//       textInputAction: TextInputAction.next,
//       autofocus: true,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Please provide a value.';
//         }
//         return null;
//       },
//       onSaved: (value) {
//         _editedComment = _editedComment.copyWith(email: value);
//       },
//     );
//   }

//   TextFormField buildScoreField() {
//     return TextFormField(
//       initialValue: _editedComment.score.toString(),
//       decoration: const InputDecoration(labelText: 'score'),
//       textInputAction: TextInputAction.next,
//       keyboardType: TextInputType.number,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Please enter score.';
//         }
//         if (double.tryParse(value) == null) {
//           return 'Enter valid number.';
//         }
//         if (double.parse(value) <= 0) {
//           return 'Please enter a number geater than zero.';
//         }
//         return null;
//       },
//       onSaved: (value) {
//         _editedComment = _editedComment.copyWith(score: double.parse(value!));
//       },
//     );
//   }

//   TextFormField buildDescriptionField() {
//     return TextFormField(
//       initialValue: _editedComment.description,
//       decoration: const InputDecoration(labelText: 'Description'),
//       maxLines: 3,
//       keyboardType: TextInputType.multiline,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Please enter a description';
//         }
//         if (value.length < 10) {
//           return 'Should be at least 10 characters long';
//         }
//         return null;
//       },
//       onSaved: (value) {
//         _editedComment = _editedComment.copyWith(description: value);
//       },
//     );
//   }

//   // Widget buildProductPreview() {
//   //   return Row(
//   //     crossAxisAlignment: CrossAxisAlignment.end,
//   //     children: <Widget>[
//   //       Container(
//   //         width: 100,
//   //         height: 100,
//   //         margin: const EdgeInsets.only(
//   //           top: 8,
//   //           right: 10,
//   //         ),
//   //         decoration: BoxDecoration(
//   //           border: Border.all(
//   //             width: 1,
//   //             color: Colors.grey,
//   //           ),
//   //         ),
//   //         child: _imageUrlController.text.isEmpty
//   //             ? const Text('Enter URL')
//   //             : FittedBox(
//   //                 child: Image.network(
//   //                   _imageUrlController.text,
//   //                   fit: BoxFit.cover,
//   //                 ),
//   //               ),
//   //       ),
//   //       Expanded(child: buildImageURLField())
//   //     ],
//   //   );
//   // }

//   // TextFormField buildImageURLField() {
//   //   return TextFormField(
//   //     decoration: const InputDecoration(labelText: 'Image URL'),
//   //     keyboardType: TextInputType.url,
//   //     textInputAction: TextInputAction.done,
//   //     controller: _imageUrlController,
//   //     focusNode: _imageUrlFocusNode,
//   //     onFieldSubmitted: (value) => _saveForm(),
//   //     validator: (value) {
//   //       if (value!.isEmpty) {
//   //         return 'Please enter an image URL.';
//   //       }
//   //       if (!_isValidImageUrl(value)) {
//   //         return 'Please enter valid URL.';
//   //       }
//   //       return null;
//   //     },
//   //     onSaved: (value) {
//   //       _editedProduct = _editedProduct.copyWith(imageUrl: value);
//   //     },
//   //   );
//   // }
// }
