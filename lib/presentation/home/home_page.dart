import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/color_manager.dart';
 
import 'package:final_project/presentation/widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/home_page.dart';
import '../widgets/feed_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<PostModel> posts = [
    const PostModel(
      name: "Starry Night over The Rhone",
      img:
          'https://smarthistory.org/wp-content/uploads/2021/12/1280px-Vincent_van_Gogh_-_Starry_Night_-_Google_Art_Project-870x672.jpeg',
    ),
    const PostModel(
      name: "Mona Lisa",
      img:
          'https://cdn.cnn.com/cnnnext/dam/assets/190906133333-isleworth-mona-lisa-crop-full-169.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, top: 2),
                  child: Image.asset(
                    ImageAssets.logoIcon,
                    height: 33,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 15.0),
                  child: Text(
                    'BlogBuddies',
                    style: GoogleFonts.lato(
                        color: ColorManager.KTextColor,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Status(),
            // const SizedBox(
            //   height: 20,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) => FeedUI(
                        post: posts[index],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
