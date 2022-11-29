import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_card_swiper/widgets/transformer_page_view/index_controller.dart';

class SwiperController extends IndexController {
  // Autoplay is started
  static const int startAutoPlay = 2;

  // Autoplay is stopped.
  static const int stopAutoPlay = 3;

  // Indicate that the user is swiping
  static const int swipe = 4;

  // Indicate that the `Swiper` has changed it's index and is building it's ui ,so that the
  // `SwiperPluginConfig` is available.
  static const int build = 5;

  // available when `event` == SwiperController.BUILD
  SwiperPluginConfig? config;

  // available when `event` == SwiperController.SWIPE
  // this value is PageViewController.pos
  double? pos;

  // int? index;
  // bool? animation;
  bool? autoplay;

  SwiperController();

  void startAutoplay() {
    event = SwiperController.startAutoPlay;
    autoplay = true;
    notifyListeners();
  }

  void stopAutoplay() {
    event = SwiperController.stopAutoPlay;
    autoplay = false;
    notifyListeners();
  }
}
