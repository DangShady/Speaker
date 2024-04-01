

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:speaker_flutter/pages/loading/loading.dart';

import 'app_routes.dart' show AppRoutes;

class AppPages {
  static const INITIAL = AppRoutes.loading;
  static final routes = [
    GetPage(
      name: AppRoutes.loading,
      page: () => const LoadingPage(),
      binding: LoadingBinding(),
    ),
    ];
}