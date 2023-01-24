import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/size_config.dart';
import 'package:final_project/presentation/widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/homepage.dart';
import '../widgets/feed_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<PostModel> posts = [
    const PostModel(
      name: "Van gogh's Starry Night",
      img:
          "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-2.jpg?t=1660737943&",
    ),
    const PostModel(
      name: "Van gogh's Starry Night",
      img:
          "https://sep.yimg.com/ty/cdn/madisonartshop/most-famous-paintings-2.jpg?t=1660737943&",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(55) ,
          ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Image.asset(
                         ImageAssets.likeIcon ,
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 15.0),
                        child: Text(
                          'Socio Network',
                          style: GoogleFonts.lato(
                              color: Colors.grey[700],
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
          const Status(),
          SizedBox(
            height: MediaQuery.of(context).size.height* 0.7,
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) => FeedUI(
                    post: posts[index],
                  )),
          ),
        ],
      );
  }
}

