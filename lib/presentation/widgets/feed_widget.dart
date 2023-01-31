import 'package:final_project/presentation/home/controller/post_controller.dart';
import 'package:final_project/presentation/home/post_details.dart';
import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';


class FeedUI extends StatelessWidget {
  // final PostModel? post;

  FeedUI({Key? key}) : super(key: key);

  final PostController _postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _postController.loading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _postController.dataResponse.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // height: 75,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 20),
                            child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(140),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(140)),
                                height: 58,
                                width: 60,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
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
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(140)),
                                        child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                          _postController
                                              .dataResponse[index].img,
                                          // 'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000',
                                        ))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 13),
                                  child: Text(
                                    _postController.dataResponse[index].title,
                                    style: GoogleFonts.lato(
                                        color: ColorManager.KTextColor,
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 16.0),
                                //   child: Text(
                                //     _postController.dataResponse[index].createdAt,
                                //     style: GoogleFonts.lato(
                                //         color: Colors.grey[500],
                                //         fontSize: 15,
                                //         letterSpacing: 1,
                                //         fontWeight: FontWeight.normal),
                                //   ),
                                // ),
                              ]),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => PostDetails())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 20),
                          child: ReadMoreText(
                            trimLines: 2,
                            colorClickableText: ColorManager.KPrimaryColor,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            _postController.dataResponse[index].desc,
                            // 'Was great meeting up with Anna Ferguson and Dave Bishop at the breakfast talk!',
                            style: GoogleFonts.lato(
                                color: ColorManager.KTextColor,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18, top: 15),
                        child: Material(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                            elevation: 6,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: Image.network(
                                  _postController.dataResponse[index].img),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, left: 28.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Image.asset(
                                    ImageAssets.likeIcon,
                                    height: 30,
                                  ),
                                ),
                                Text(
                                  _postController.dataResponse[index].like,
                                  style: GoogleFonts.averageSans(
                                      color: Colors.grey[700],
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10, right: 22.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: Image.network(
                                    'https://aux.iconspalace.com/uploads/comment-icon-256.png',
                                    height: 30,
                                  ),
                                ),
                                Text(
                                  _postController.dataResponse[index].like,
                                  style: GoogleFonts.averageSans(
                                      color: ColorManager.KTextColor,
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
    );
  }
}
