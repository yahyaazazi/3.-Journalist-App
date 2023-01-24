// void hi(){
//   Container(
//     decoration: const BoxDecoration(
//         color: Colors.white,
//         image: DecorationImage(
//             image: AssetImage(
//               'assets/images/pattern.png',
//             ),
//             fit: BoxFit.cover)),
//     child: Scaffold(
//       appBar: AppBar(actions: [
//         TextFormField(
//
//           onChanged: (value) {
//
//             setState(() {
//               value=qurry;
//             });
//           },
//
//         )
//       ]),
//       body: ListView.builder(
//         itemCount: search()?.length,
//         itemBuilder: (context, index) {
//           return search()?.elementAt(index);
//         },
//       ),
//     ),
//   );
// }