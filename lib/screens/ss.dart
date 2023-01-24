// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:searchbar_animation/searchbar_animation.dart';
//
// import '../models/NewsDataModel.dart';
// import '../shared/network/remote/api_manager.dart';
//
// class ss extends StatefulWidget {
//   @override
//   State<ss> createState() => _ssState();
// }
//
// class _ssState extends State<ss> {
//   String qurry = '';
//
//   List<Articles> newList = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return SearchBarAnimation(
//       onPressButton: (isSearchBarOpens) {
//         setState(() {
//
//         });
//         debugPrint(
//             'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'}'
//             ' animation');
//       },
//       searchBoxWidth: 400,
//       buttonWidget: Icon(
//         Icons.search,
//         size: 15,
//         color: Colors.black,
//       ),
//       textEditingController: TextEditingController(),
//       isOriginalAnimation: true,
//       trailingWidget: const Icon(
//         Icons.search,
//         size: 15,
//         color: Colors.black,
//       ),
//       secondaryButtonWidget: const Icon(
//         Icons.close,
//         size: 15,
//         color: Colors.black,
//       ),
//     );
//   }
//
//   List? search() {
//     ApiManager.getNewsData(qurry: qurry).then(
//       (newsRes) {
//         newList = newsRes.articles ?? [];
//       },
//     ).catchError((erorr) {
//       debugPrint('error$erorr');
//     });
//     return newList;
//   }
// }
//
// //void kk(){inputFormatters: [
// //         FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
// //         FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
// //       ],
// //       enableBoxBorder: false,
// //       onChanged: (value) {
// //         print('$value');
// //         value = qurry;
// //         setState(() {});
// //       },
// //       searchBoxWidth: 400,
// //       textEditingController: TextEditingController(),
// //       isOriginalAnimation: true,
// //       enableKeyboardFocus: true,
// //       isSearchBoxOnRightSide: true,
// //       onExpansionComplete: () {
// //         debugPrint('do something just after searchbox is opened.');
// //       },
// //       onCollapseComplete: () {
// //         debugPrint('do something just after searchbox is closed.');
// //       },
// //       onPressButton: (isSearchBarOpens) {
// //         debugPrint(
// //             'do something before animation started. It\'s the ${isSearchBarOpens
// //                 ? 'opening'
// //                 : 'closing'}'
// //                 ' animation');
// //       },
// //       trailingWidget: const Icon(
// //         Icons.search,
// //         size: 15,
// //         color: Colors.black,
// //       ),
// //       secondaryButtonWidget: const Icon(
// //         Icons.close,
// //         size: 15,
// //         color: Colors.black,
// //       ),
// //       buttonWidget: const Icon(
// //         Icons.search,
// //         size: 15,
// //         color: Colors.black,
// //       ),}
