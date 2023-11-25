import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/u_select_type_radio.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentAboutSection extends StatefulWidget {
  const UAppointmentAboutSection({super.key});

  @override
  State<UAppointmentAboutSection> createState() =>
      _UAppointmentAboutSectionState();
}

class _UAppointmentAboutSectionState extends State<UAppointmentAboutSection> {
  int selectIndex = 0;
  List<String> categories = [
    male,
    female,
  ];
  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  var ageController = TextEditingController();

  var appointmentAddressController = TextEditingController();

  var patientNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            texfieldHeight: 54.h,
            controller: patientNameController,
            hintText: enterPatientname.replaceAll('Enter', ''),
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            obscure: false,
            label: enterPatientname,
            subTitle: '',
          ),
          const SizedBox(
            height: 12,
          ),
          Text(gender,
              style: getMediumStyle(
                  color: MyColors.black94, fontSize: MyFonts.size16)),
          const SizedBox(height: 10),
          padding10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                children: List.generate(categories.length, (index) {
                  return USelectTypeRadio(
                      category: categories[index],
                      index: index,
                      selectIndex: selectIndex,
                      onTap: () {
                        setState(() {
                          selectIndex = index;
                        });
                      });
                }),
              ),
            ),
          ),
          padding10,
          CustomTextField(
            texfieldHeight: 54.h,
            controller: emailController,
            hintText: enteremailAddress.replaceAll('Enter', ''),
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            obscure: false,
            label: enteremailAddress,
            subTitle: '',
          ),
          padding10,
          CustomTextField(
            texfieldHeight: 54.h,
            controller: phoneController,
            hintText: enterPhoneNumber.replaceAll('Enter', ''),
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            obscure: false,
            label: enterPhoneNumber,
            subTitle: '',
          ),
          padding10,
          CustomTextField(
            texfieldHeight: 54.h,
            controller: ageController,
            hintText: patientAge,
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            obscure: false,
            label: patientAge,
            subTitle: '',
          ),
          padding10,
          CustomTextField(
            texfieldHeight: 74.h,
            maxLines: 2,
            controller: appointmentAddressController,
            hintText: appointmentAddress,
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            obscure: false,
            label: appointmentAddress,
            subTitle: '',
          ),
          padding16,
        ],
      ),
    );
  }
}
