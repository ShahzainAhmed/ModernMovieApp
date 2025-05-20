import 'package:get/get.dart';
import 'package:modern_movie_app/modules/auth/binding/signup_binding.dart';
import 'package:modern_movie_app/modules/auth/signup_screen.dart';
import 'package:modern_movie_app/modules/chat/binding/chat_binding.dart';
import 'package:modern_movie_app/modules/chat/chat_screen.dart';
import 'package:modern_movie_app/modules/detail/detail_screen.dart';
import 'package:modern_movie_app/modules/home/home_screen.dart';
import 'package:modern_movie_app/modules/profile/profile_screen.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.detailScreen,
      page: () => DetailScreen(),
    ),
    GetPage(
      name: AppRoutes.signupScreen,
      page: () => SignupScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.chatScreen,
      binding: ChatsBinding(),
      page: () => ChatScreen(),
    )
  ];
}
