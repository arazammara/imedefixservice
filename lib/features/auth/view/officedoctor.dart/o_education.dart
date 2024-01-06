import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class Office_EducationAndExeience extends StatelessWidget {
  Office_EducationAndExeience({super.key, required this.onPressed});
  final VoidCallback onPressed;

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
        padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
        child: SingleChildScrollView(
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
                hintText: 'Office Type',
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
                hintText: 'Speciality',
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
                hintText: 'Office Location',
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
                hintText: 'Street',
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
                hintText: 'City',
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
                hintText: 'Zip Code',
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: '',
                subTitle: '',
              ),
              padding20,
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
    );
  }
}
