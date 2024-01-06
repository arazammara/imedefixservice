import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class Office_BasicInformation extends StatelessWidget {
  Office_BasicInformation({super.key, required this.onPressed});
  final VoidCallback onPressed;

  final TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
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
                padding64,
                CustomTextField(
                  validatorFn: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  texfieldHeight: 60.h,
                  controller: namecontroller,
                  hintText: 'Office Name',
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
                  hintText: 'Office Email',
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
                  hintText: 'Office Number',
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: '',
                  subTitle: '',
                ),
                CustomTextField(
                  borderRadius: 12,
                  maxLines: 3,
                  validatorFn: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  texfieldHeight: 60.h,
                  controller: namecontroller,
                  hintText: 'About Office',
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
                        'Max 100 Words',
                        style: getSemiBoldStyle(
                            color: MyColors.grey, fontSize: MyFonts.size14),
                      ),
                    ],
                  ),
                ),
                NextButton(
                  back: () {},
                  text: 'Next',
                  isbackbuton: true,
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: -60,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 70.w,
              backgroundColor: MyColors.lightBg,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: MyColors.grey.withOpacity(0.20),
                child: Text(
                  'Add\nPhoto',
                  textAlign: TextAlign.center,
                  style: getSemiBoldStyle(
                      color: MyColors.grey, fontSize: MyFonts.size14),
                ),
              ),
            ))
      ],
    );
  }
}
