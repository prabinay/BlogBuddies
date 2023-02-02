import 'dart:developer';

import 'package:final_project/models/post.dart';
import 'package:final_project/presentation/base_model/base_model.dart';

import 'package:get/get.dart';

import '../../../app/constants/enum.dart';
import '../../../data/network/api_service_provider.dart';

class PostController extends BaseController {

  final ApiServiceProvider _apiServiceProvider = ApiServiceProvider();
  List dataResponse = [].obs;
  // RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
  log('message');
    fetchPosts();
  }

  void fetchPosts() async {
    setState(ViewState.busy);

    List<Posts>? posts = await _apiServiceProvider.getPosts();

    dataResponse.assignAll(posts);
    log("${dataResponse.length}");
    // loading.value = false;

    setState(ViewState.retrieved);
  }
}
