import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/controllers/signup_controller.dart';
import 'package:personal_project/modules/auth/components/background_gradient_card.dart';
import 'package:personal_project/modules/components/primary_button.dart';
import 'package:personal_project/resources/app_assets.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/auth/components/text_field_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignupController controller = Get.find<SignupController>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradientCard(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "sandra.ai",
                style: AppTypography.kMedium36
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                height: Get.height / 1.4,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Get Started", style: AppTypography.kMedium30),
                      Text(
                        "Start your journey to a stronger,\nsupported family.",
                        textAlign: TextAlign.center,
                        style: AppTypography.kMedium16
                            .copyWith(color: AppColors.kDarkGreyColor),
                      ),
                      TextFieldWidget(
                        hintText: "Email",
                        controller: controller.emailController,
                      ),
                      Obx(() => controller.emailError.value.isEmpty
                          ? const SizedBox.shrink()
                          : Text(
                              controller.emailError.value,
                              style: TextStyle(
                                  color: AppColors.kRedColor, fontSize: 12.sp),
                            )),
                      TextFieldWidget(
                        hintText: "Password",
                        isPassword: true,
                        controller: controller.passwordController,
                      ),
                      Obx(() => controller.passwordError.value.isEmpty
                          ? const SizedBox.shrink()
                          : Text(
                              controller.passwordError.value,
                              style: TextStyle(
                                  color: AppColors.kRedColor, fontSize: 12.sp),
                            )),
                      PrimaryButton(
                        title: "Create Account",
                        borderRadius: 12.r,
                        onTap: () {
                          if (controller.validate()) {
                            Get.offAllNamed(AppRoutes.homeScreen);
                          }
                        },
                      ),
                      Text(
                        "Or sign up with",
                        style: AppTypography.kMedium16
                            .copyWith(color: AppColors.kDarkGreyColor),
                      ),
                      PrimaryButton(
                        title: "Continue with Google",
                        svgIcon: AppAssets.googleLogo,
                        borderRadius: 12.r,
                        backgroundColor: AppColors.kWhiteColor,
                        textColor: AppColors.kDarkGreyColor,
                        borderColor: AppColors.kSmokeColor,
                        onTap: () => Get.offAllNamed(AppRoutes.homeScreen),
                      ),
                      PrimaryButton(
                        title: "Continue with Apple",
                        svgIcon: AppAssets.appleLogo,
                        borderRadius: 12.r,
                        backgroundColor: AppColors.kWhiteColor,
                        textColor: AppColors.kDarkGreyColor,
                        borderColor: AppColors.kSmokeColor,
                        onTap: () => Get.offAllNamed(AppRoutes.homeScreen),
                      ),
                      SizedBox(height: 10.h),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: AppTypography.kLight14
                              .copyWith(color: AppColors.kBlackColor),
                          children: [
                            TextSpan(
                              text: "Sign up here!",
                              style: AppTypography.kMedium14
                                  .copyWith(color: AppColors.kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
