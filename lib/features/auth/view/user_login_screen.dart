import 'package:flutter/cupertino.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/common_pass_text_field.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/auth/widgets/u_login_forget_password_section.dart';
import 'package:idaawee/features/auth/widgets/u_login_welcome_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import '../../../commons/common_imports/common_libs.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final emailController = TextEditingController();
  final forgotPassCtr = TextEditingController();
  final passwordController = TextEditingController();
  bool passObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.bgImage), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  padding127,
                  const ULoginWelcomeSection(),
                  padding35,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      validatorFn: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      trailingIconPath: AppAssets.tick,
                      texfieldHeight: 54.h,
                      controller: emailController,
                      hintText: 'Email',
                      onChanged: (value) {},
                      onFieldSubmitted: (value) {},
                      obscure: false,
                      label: '',
                      subTitle: '',
                    ),
                  ),
                  padding8,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonPassTextField(
                      validatorFn: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      tailingIcon: passObscure == false
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  passObscure = !passObscure;
                                });
                              },
                              child: Icon(
                                CupertinoIcons.eye,
                                color: MyColors.themebBluishGreyColor,
                                size: 14.sp,
                              ))
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  passObscure = !passObscure;
                                });
                              },
                              child: Icon(CupertinoIcons.eye_slash,
                                  color: MyColors.themebBluishGreyColor,
                                  size: 14.sp)),
                      texfieldHeight: 54.h,
                      controller: passwordController,
                      hintText: 'Password',
                      onChanged: (value) {},
                      onFieldSubmitted: (value) {},
                      obscure: passObscure,
                      label: '',
                      subTitle: '',
                    ),
                  ),
                  padding24,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, AppRoutes.userMainMenuScreen);
                        }
                      },
                      buttonText: login,
                      fontSize: 18,
                      borderRadius: 12,
                      backColor: MyColors.appColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, AppRoutes.doctorMainMenu);
                        }
                      },
                      buttonText: 'Login As Doctor',
                      fontSize: 18,
                      borderRadius: 12,
                      backColor: MyColors.appColor,
                    ),
                  ),
                  ULoginForgetPasswordSection(),
                ],
              ),
            ),
          ),
        ));
  }
}
