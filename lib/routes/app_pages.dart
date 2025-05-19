import 'package:get/get.dart';
import 'package:personal_project/modules/auth/binding/signup_binding.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/auth/signup_screen.dart';
import 'package:personal_project/modules/chat/binding/chat_binding.dart';
import 'package:personal_project/modules/chat/chat_screen.dart';
import 'package:personal_project/modules/form/binding/form_binding.dart';
import 'package:personal_project/modules/form/form_screen.dart';
import 'package:personal_project/modules/home/home_screen.dart';
import 'package:personal_project/modules/profile/profile_screen.dart';
import 'package:personal_project/modules/question_answer/qa_screen.dart';
import 'package:personal_project/modules/welcome_view/welcome_view_screen.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
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
      name: AppRoutes.welcomeViewScreen,
      page: () => WelcomeViewScreen(),
    ),
    GetPage(
      name: AppRoutes.formScreen,
      binding: FormBinding(),
      page: () => FormScreen(),
    ),
    GetPage(
      name: AppRoutes.qaScreen,
      page: () => QaScreen(),
    ),
    GetPage(
      name: AppRoutes.chatScreen,
      binding: ChatsBinding(),
      page: () => ChatScreen(),
    )
  ];
}
