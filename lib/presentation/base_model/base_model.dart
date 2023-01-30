import 'package:get/state_manager.dart';

import '../../app/constants/enum.dart';


class BaseController extends GetxController {
  final _state = ViewState.idle.obs;

  ViewState get state => _state.value;

  void setState(ViewState newState) {
    _state.value = newState;
  }
}