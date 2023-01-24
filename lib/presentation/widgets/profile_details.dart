import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  AppStrings.profileDetails,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 70,
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            color: ColorManager.KPrimaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 21,
                              color: ColorManager.KSecondaryColor,
                            ),
                            Text(
                              AppStrings.profileEdit,
                              style: TextStyle(
                                color: ColorManager.KSecondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(
                      ImageAssets.profilePic,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: ColorManager.KPrimaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Icon(
                      Icons.add_a_photo,
                      color: ColorManager.KSecondaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 210,
            margin: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: ColorManager.KSecondaryColor,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppStrings.userName,
                              style: TextStyle(
                                color: ColorManager.KTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppStrings.userRole,
                              style: TextStyle(
                                color: ColorManager.KTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppStrings.userComplay,
                              style: TextStyle(
                                color: ColorManager.KTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppStrings.userLocation,
                              style: TextStyle(
                                color: ColorManager.KTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )))),
              ],
            ),
          ),
          Container(
            height: 210,
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: ColorManager.KSecondaryColor,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person,
                              ),
                              Text(
                                AppStrings.privateInfo,
                                style: TextStyle(
                                  color: ColorManager.KTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.email,
                              ),
                              Text(
                                AppStrings.userEmail,
                                style: TextStyle(
                                  color: ColorManager.KTextColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.phone_android,
                              ),
                              Text(
                                AppStrings.userPhone,
                                style: TextStyle(
                                  color: ColorManager.KTextColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ))),
                SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_city_outlined,
                              ),
                              Text(
                                AppStrings.userLocation,
                                style: TextStyle(
                                  color: ColorManager.KTextColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
