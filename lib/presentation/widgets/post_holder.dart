// import 'package:final_project/models/homepage.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/material.dart';

// class PostHolder extends StatelessWidget {
//   final PostModel? post;

//   const PostHolder({Key? key, this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(8),
//         child: Container(
//             height: 350,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(
//                   color: Colors.white,
//                 ),
//                 borderRadius: const BorderRadius.all(Radius.circular(25))),
//             child: Column(children: [
//               ContainerClass(
//                 img: post!.img,
//                 height: 206,
//                 width: MediaQuery.of(context).size.width,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8, top: 5),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(post!.name ?? "",
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       )),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
//                 child: Description(
//                   post: post,
//                 ),
//               )
//             ])));
//   }
// }

// class ContainerClass extends StatelessWidget {
//   final String? img;
//   final double? height;
//   final double? width;

//   const ContainerClass({Key? key, this.img, this.height, this.width})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     // appBar: AppBar(
//     //   name: const Text("Container"),
//     // ),
//     return Container(
//       margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
//       // color: const Color.fromARGB(255, 46, 204, 32),
//       // width: MediaQuery.of(context).size.width,

//       height: height ?? 100,
//       width: width ?? 100,

//       // child:  const Image(post: AssetImage("assets/images/bc.png")))
//       // child: const Center(child: Text("I am container"

//       // decoration: BoxDecoration(
//       //   border:
//       //       Border.all(width: 1, color: const Color.fromARGB(95, 12, 0, 243)),
//       //   borderRadius: const BorderRadius.all(Radius.circular(0)),
//       // ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10.0),
//         child: Image.network(
//             img ??
//                 "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg",
//             fit: BoxFit.cover),
//       ),
//     );
//   }
// }

// class Description extends StatelessWidget {
//   final PostModel? post;
//   const Description({Key? key, this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           post!.img!,
//           textAlign: TextAlign.justify,
//           style: TextStyle(
//             fontWeight: FontWeight.w400,
//             color: Colors.grey[700],
//           ),
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: Row(
//             children: [
//               Text(
//                 "Ratings: ",
//                 style: const TextStyle(
//                     fontWeight: FontWeight.normal, color: Colors.black),
//               ),
//               const Spacer(),
//               Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: OutlinedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => DetailPage(
//                                   imageModel: post!,
//                                 )),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(Colors.blue),
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15.0))),
//                     ),
//                     child: const Text(
//                       "See More",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ))
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   final PostModel? imageModel;

//   const DetailPage({Key? key, this.imageModel}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[topContent(context), bottomContent(context)],
//       ),
//     );
//   }

//   Widget topContent(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//             padding: const EdgeInsets.only(left: 10.0),
//             height: MediaQuery.of(context).size.height * 0.5,
//             decoration: BoxDecoration()),
//         Container(
//           height: MediaQuery.of(context).size.height * 0.5,
//           padding: const EdgeInsets.all(40.0),
//           width: MediaQuery.of(context).size.width,
//           decoration:
//               const BoxDecoration(color: Color.fromARGB(224, 206, 210, 221)),
//           child: Center(
//             child: topContentText(),
//           ),
//         ),
//         Positioned(
//           left: 8.0,
//           top: 60.0,
//           child: InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: const Icon(Icons.arrow_back, color: Colors.white),
//           ),
//         )
//       ],
//     );
//   }

//   Widget topContentText() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const SizedBox(height: 120.0),
//         const Icon(
//           Icons.portrait,
//           color: Colors.white,
//           size: 60.0,
//         ),
//         const SizedBox(
//           width: 90.0,
//           child: Divider(color: Colors.red),
//         ),
//         const SizedBox(height: 10.0),
//         Text(
//           imageModel!.name!,
//           style: const TextStyle(color: Colors.white, fontSize: 45.0),
//         ),
//         const SizedBox(height: 30.0),
//       ],
//     );
//   }

//   Widget bottomContentText() {
//     return Text(
//       imageModel!.img!,
//       textAlign: TextAlign.justify,
//       style: const TextStyle(fontSize: 18.0),
//     );
//   }

//   Widget readButton(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.symmetric(vertical: 16.0),
//         width: MediaQuery.of(context).size.width,
//         child: MaterialButton(
//           onPressed: () => {},
//           color: Colors.blue,
//           child:
//               const Text("BUY THIS ART", style: TextStyle(color: Colors.white)),
//         ));
//   }

//   Widget bottomContent(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       padding: const EdgeInsets.all(40.0),
//       child: Center(
//         child: Column(
//           children: <Widget>[bottomContentText(), readButton(context)],
//         ),
//       ),
//     );
//   }
// }
