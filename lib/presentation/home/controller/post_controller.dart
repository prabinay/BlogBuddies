
import 'dart:developer';

import 'package:final_project/models/post.dart';

import 'package:get/get.dart';

import '../../../data/network/api_service_provider.dart';

class PostController extends GetxController {
  // final TextEditingController title = TextEditingController();
  // final TextEditingController desc = TextEditingController();
  // final TextEditingController time = TextEditingController();
  // final TextEditingController image = TextEditingController();
  // final TextEditingController like = TextEditingController();

  final ApiServiceProvider _apiServiceProvider = ApiServiceProvider();
  List dataResponse = [].obs;
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // log("message");
    fetchPosts();
  }

  void fetchPosts() async {

    loading.value = true;

    List<Posts>? posts = await _apiServiceProvider.getPosts();

    dataResponse.assignAll(posts);
      log("${dataResponse.length}");
    loading.value = false;
    // if (posts.isNotEmpty) {
    //   postsAvailable.value = true;
    // }

    // setState(ViewState.retrieved);
  }
}
