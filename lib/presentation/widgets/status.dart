import 'package:final_project/presentation/widgets/status_full.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: 100,
            child: Stack(
              children: <Widget>[
                Container(
                    height: 78,
                    width: 71,
                    margin: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 25, bottom: 5),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorManager.KPrimaryColor, width: 2),
                        borderRadius: BorderRadius.circular(140)),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
                      ),
                    )),
                Positioned(
                  bottom: 7,
                  right: 15, //give the values according to your requirement
                  child: Material(
                      color: ColorManager.KPrimaryColor,
                      elevation: 10,
                      borderRadius: BorderRadius.circular(100),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Sound Byte',
              style: GoogleFonts.lato(
                  color: Colors.grey[700],
                  fontSize: 12,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ]),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              height: 100,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 78,
                      width: 71,
                      margin:
                          const EdgeInsets.only(left: 12.0, top: 25, bottom: 5),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorManager.KPrimaryColor, width: 2),
                          borderRadius: BorderRadius.circular(140)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://thebodyisnotanapology.com/wp-content/uploads/2018/02/pexels-photo-459947.jpg',
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Chris Payne',
                style: GoogleFonts.lato(
                    color: ColorManager.KTextColor,
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            var route = MaterialPageRoute(
              builder: (BuildContext context) => const StatusFull(),
            );

            Navigator.of(context).push(route);
          },
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 100,
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 78,
                        width: 71,
                        margin: const EdgeInsets.only(
                            left: 20.0, top: 25, bottom: 5),
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorManager.KPrimaryColor, width: 2),
                            borderRadius: BorderRadius.circular(140)),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://post.healthline.com/wp-content/uploads/2019/02/How-to-Become-a-Better-Person-in-12-Steps_1200x628-facebook.jpg',
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Matt Redman',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              height: 100,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 78,
                      width: 71,
                      margin:
                          const EdgeInsets.only(left: 25.0, top: 25, bottom: 5),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorManager.KPrimaryColor, width: 2),
                          borderRadius: BorderRadius.circular(140)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/11/virat-kohli-1574240907.jpg',
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Virat Kholi',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
