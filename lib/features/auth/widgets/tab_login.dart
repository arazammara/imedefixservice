import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/widgets/u_login_welcome_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../commons/common_widgets/custom_button.dart';

class TabLogin extends StatefulWidget {
  const TabLogin({super.key, required this.isdoctor});
  final isdoctor;

  @override
  State<TabLogin> createState() => _TabLoginState();
}

class _TabLoginState extends State<TabLogin> {
  final emailController = TextEditingController();
  final forgotPassCtr = TextEditingController();
  final passwordController = TextEditingController();
  bool passObscure = true;
  final _formKey = GlobalKey<FormState>();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              leadingIconPath: AppAssets.user,
              texfieldHeight: 60.h,
              controller: emailController,
              hintText: 'Username or Email',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
            padding10,
            CustomTextField(
              leadingIconPath: AppAssets.key,
              texfieldHeight: 60.h,
              controller: passwordController,
              hintText: 'Password',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: passObscure,
              label: '',
              subTitle: '',
              onTap: () {
                setState(() {
                  passObscure = !passObscure;
                });
              },
            ),
            padding10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      side: const BorderSide(color: MyColors.grey, width: 2),
                      checkColor: MyColors.white,
                      focusColor: Colors.white,
                      fillColor: value
                          ? MaterialStateProperty.all(MyColors.appColor)
                          : MaterialStateProperty.all(MyColors.white),
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val!;
                        });
                      },
                    ),
                    Text('Remember me',
                        style: getMediumStyle(
                            color: MyColors.grey, fontSize: MyFonts.size16)),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(forgorpassword,
                      style: getMediumStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size16)),
                ),
              ],
            ),
            padding10,
            CustomButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (widget.isdoctor == true) {
                    Navigator.pushNamed(
                        context, AppRoutes.udoctormainMainMenuScreen);
                  } else {
                    Navigator.pushNamed(context, AppRoutes.userMainMenuScreen);
                  }
                }
              },
              buttonText: login,
              fontSize: 18,
              borderRadius: 100.r,
              backColor: MyColors.appColor,
            ),
            const ULoginBottomSection(),
          ],
        ),
      ),
    );
  }
}
