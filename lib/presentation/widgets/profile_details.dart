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
            padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 24,
                    color: ColorManager.KPrimaryColor,
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  AppStrings.profileDetails,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Container(
                  height: 24,
                  width: 24,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.edit, size: 18),
                    label: const Text(AppStrings.profileEdit),
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
                    child: Icon(
                      Icons.add_a_photo,
                      color: ColorManager.KSecondaryColor,
                    ),
                    decoration: BoxDecoration(
                        color: ColorManager.KPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 210,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: ColorManager.KSecondaryColor,
            ),
            child: Column(
              children: <Widget>[
                Container(
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
                Container(
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
                Container(
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
                Container(
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
            margin: EdgeInsets.only(left: 5, right: 5, top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
