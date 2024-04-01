import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:speaker_flutter/helpers/extension/responsive.dart';
import 'package:speaker_flutter/style/app_style.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../../constants/app_constant.dart';
import '../../constants/image_constants.dart';
import '../../utils/screen_util.dart';
import 'loading_controller.dart';

class LoadingPage extends GetView<LoadingController> {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: BASE_WIDTH, allowFontScaling: true)
      ..init(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.logoLoading),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 268,
                child: Text(
                  'Your personal language learning tutor.',
                  style: Style().bodyLargeRegular,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              new DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  color: Colors.blue, // Inactive color
                  activeColor: Colors.blue,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
