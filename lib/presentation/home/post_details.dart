import 'package:final_project/models/home_page.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  final PostModel? post;
  const PostDetails({super.key, this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(left: 10.0),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    post!.img ??
                        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(40.0),
            width: MediaQuery.of(context).size.width,
            decoration:
                const BoxDecoration(color: Color.fromARGB(224, 206, 210, 221)),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 120.0),
                  const Icon(
                    Icons.portrait,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  const SizedBox(
                    width: 90.0,
                    child: Divider(color: Colors.red),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    post!.name?? "Name",
                    style: const TextStyle(color: Colors.white, fontSize: 45.0),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8.0,
            top: 60.0,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  //         Text(
                  //   post!.description!,
                  //   textAlign: TextAlign.justify,
                  //   style: const TextStyle(fontSize: 18.0),
                  // ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        onPressed: () => {},
                        color: Colors.blue,
                        child: const Text("BUY THIS ART",
                            style: TextStyle(color: Colors.white)),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}