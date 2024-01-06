import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class EducationAndExeience extends StatelessWidget {
  EducationAndExeience(
      {super.key, required this.onPressed, required this.onPressedback});
  final VoidCallback onPressed;
  final VoidCallback onPressedback;

  final TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      decoration: const BoxDecoration(
        color: MyColors.lightBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            padding10,
            CustomTextField(
              validatorFn: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              texfieldHeight: 60.h,
              controller: namecontroller,
              hintText: 'Education',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
            CustomTextField(
              validatorFn: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              texfieldHeight: 60.h,
              controller: namecontroller,
              hintText: 'College/ University',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
            CustomTextField(
              borderRadius: 12,
              validatorFn: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              texfieldHeight: 60.h,
              controller: namecontroller,
              hintText: 'license & Number',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Secure & Confidential',
                    style: getSemiBoldStyle(
                        color: MyColors.grey, fontSize: MyFonts.size14),
                  ),
                ],
              ),
            ),
            CustomTextField(
              borderRadius: 12,
              validatorFn: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              texfieldHeight: 60.h,
              controller: namecontroller,
              hintText: 'Years Of Experiences',
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
            padding20,
            NextButton(
              text: 'Next',
              back: onPressedback,
              isbackbuton: true,
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
