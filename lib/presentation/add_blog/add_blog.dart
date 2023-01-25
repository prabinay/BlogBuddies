import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';

class AddNewBlog extends StatefulWidget {
  const AddNewBlog({Key? key}) : super(key: key);

  @override
  State<AddNewBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddNewBlog> {
  IconData iconphoto = Icons.image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.KSecondaryColor,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    width: 40,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 24,
                      color: ColorManager.KPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    AppStrings.postBlog,
                    style: GoogleFonts.lato(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 120,
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              color: ColorManager.KPrimaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.mainPage);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.publish,
                                  size: 21,
                                  color: ColorManager.KSecondaryColor,
                                ),
                                Text(
                                  AppStrings.publish,
                                  style: TextStyle(
                                    color: ColorManager.KSecondaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.topRight,
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 20, right: 15),
            //     height: 40,
            //     width: 100,
            //     decoration: BoxDecoration(
            //         color: ColorManager.KPrimaryColor,
            //         borderRadius: BorderRadius.circular(25)),
            //     child: Center(
            //       child: OutlinedButton(
            //         onPressed: () {
            //           Navigator.pushNamed(context, Routes.mainPage);
            //         },
            //         child: const Text(
            //           AppStrings.publish,
            //           textAlign: TextAlign.center,
            //           style: TextStyle(color: Colors.white, fontSize: 15),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              // padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: AppStrings.title,
                  // hintText: AppStrings.title
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 25, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: AppStrings.content,
                  // hintText: AppStrings.enterPassword,
                ))),
          ],
        )));
  }
}
