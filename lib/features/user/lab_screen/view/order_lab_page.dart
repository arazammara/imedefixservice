import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_order_lab_profile_section.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_select_doing_test_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class OrderLabPage extends StatefulWidget {
  const OrderLabPage({super.key});

  @override
  State<OrderLabPage> createState() => _OrderLabPageState();
}

class _OrderLabPageState extends State<OrderLabPage> {
  final _formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();

  var nameController = TextEditingController();

  var ageController = TextEditingController();

  var genderController = TextEditingController();

  var addressController = TextEditingController();
  int index = 0;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: order,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UOrderLabProfileSection(
                    image: AppAssets.profile,
                    name: 'Doctor Samantha',
                    subName: 'subName',
                    consultant: 'Consultant',
                    professional: 'Professional'),
                SizedBox(height: 22.h),
                CustomTextField(
                  validatorFn: (vlaue) {
                    if (vlaue!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  texfieldHeight: 54.h,
                  controller: nameController,
                  hintText: enteryourname,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: patientName,
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  validatorFn: (vlaue) {
                    if (vlaue!.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                  texfieldHeight: 54.h,
                  controller: ageController,
                  hintText: enteryourAge,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: age,
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  validatorFn: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                  texfieldHeight: 54.h,
                  controller: phoneController,
                  hintText: enteryourmobilenumber,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: mobilenumber,
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  validatorFn: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your gender';
                    }
                    return null;
                  },
                  texfieldHeight: 54.h,
                  controller: genderController,
                  hintText: enteryourgender,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: gender,
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  texfieldHeight: 97.h,
                  maxLines: 2,
                  controller: addressController,
                  hintText: enteryouraddress,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: address,
                  subTitle: '',
                ),
                padding16,
                const USelectDoingTestSection(),
                padding20,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(8.r),
                      onTap: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      child: Container(
                        height: 20.h,
                        width: 20.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: isCheck
                                  ? MyColors.appColor
                                  : MyColors.lightContainerColor),
                        ),
                        child: Icon(Icons.check,
                            size: 15.h,
                            color:
                                isCheck ? MyColors.appColor : MyColors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 250.w,
                      child: Text(
                        iagreedtermandcondition,
                        style: getSemiBoldStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size12),
                      ),
                    )
                  ],
                ),
                padding50,
                CustomButton1(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                          context, AppRoutes.userLabPaymentModeScreen);
                    }
                  },
                  buttonText: payNow,
                  backColor: MyColors.appColor,
                  borderRadius: 10.r,
                  fontSize: MyFonts.size22,
                ),
                padding32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
