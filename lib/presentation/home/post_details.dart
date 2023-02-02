import 'dart:ui';

import 'package:final_project/app/constants/enum.dart';
 
import 'package:final_project/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'controller/post_controller.dart';

class PostDetails extends StatelessWidget {
  // PickedFile _image;
  // final ImagePicker picker = ImagePicker();

  final Posts? post;
  PostDetails({Key? key, this.post}) : super(key: key);
  final PostController _postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _postController.state == ViewState.busy
          ? const SpinKitCircle(color: Colors.blue)
          : ListView.builder(
              itemCount: _postController.dataResponse.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  height: 500,
                  child: SafeArea(
                      child: Scaffold(
                          body: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image(
                            image: NetworkImage(
                          _postController.dataResponse[index].img,
                          // 'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000',
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      DraggableScrollableSheet(
                          initialChildSize: 0.7,
                          maxChildSize: 1.0,
                          minChildSize: 0.6,
                          builder: (context, scrollController) {
                            return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                              ),
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 35,
                                            color: Colors.black12,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      _postController.dataResponse[index].title,
                                      style: const TextStyle(
                                        fontSize: 32,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // Text(
                                    //   _postController.dataResponse[index].createdAt,
                                    //   style: TextStyle(
                                    //     fontSize: 18,
                                    //   ),
                                    // ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           ProfileTap(showFollowBottomInProfile: true),
                                            //     ));
                                          },
                                          child: CircleAvatar(
                                            radius: 25,
                                            child: Container(
                                              height: 78,
                                              width: 74,
                                              margin: const EdgeInsets.only(
                                                  left: 0.0,
                                                  right: 0,
                                                  top: 0,
                                                  bottom: 0),
                                              padding: const EdgeInsets.all(0),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blue,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          150)),
                                              child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      _postController
                                                          .dataResponse[index]
                                                          .img
                                                      // 'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000',
                                                      )),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("Elena Shelby",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            )
                                            // .copyWith(color: mainText),
                                            ),
                                        const Spacer(),
                                        const CircleAvatar(
                                          radius: 25,
                                          // backgroundColor: primary,
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                            _postController
                                                .dataResponse[index].like,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            )
                                            // .copyWith(color: mainText),
                                            ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      child: Divider(
                                        height: 4,
                                      ),
                                    ),
                                    const Text("Description",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ReadMoreText(
                                      // '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, se
                                      // d do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                      //  ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu
                                      //  ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in v
                                      //  oluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur si
                                      //  nt occaecat cupidatat non proident, sunt in culpa qui officia deserunt mo
                                      //  llit anim id est laborum',
                                      _postController.dataResponse[index].desc,
                                      trimLines: 5,
                                      colorClickableText: Colors.blue,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: 'Show more',
                                      trimExpandedText: 'Show less',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ))),
                );
              }),
    );
  }
}
