import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_address_select_card.dart';

// ignore: must_be_immutable
class UAddressSection extends StatelessWidget {
  UAddressSection({super.key});

  List<String> addressType = [
    home,
    office,
    others,
  ];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var addressController = TextEditingController();
    var customAddressController = TextEditingController();
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var pinController = TextEditingController();
    var cityController = TextEditingController();
    var stateController = TextEditingController();

    return SizedBox(
      height: 0.7.sh,
      width: 1.sw,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(children: [
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
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
                label: fullname,
                subTitle: '',
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                texfieldHeight: 54.h,
                controller: emailController,
                hintText: enteryouremailid,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: emailid,
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
                label: phonenumber,
                subTitle: '',
              ),
              padding10,
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                texfieldHeight: 97.h,
                maxLines: 2,
                controller: addressController,
                hintText: pleaseaddyourfulladdress,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: addresss,
                subTitle: '',
              ),
              padding10,
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your pincode';
                  }
                  return null;
                },
                texfieldHeight: 54.h,
                controller: pinController,
                hintText: enterpincode,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: pincode,
                subTitle: '',
              ),
              padding10,
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                texfieldHeight: 54.h,
                controller: cityController,
                hintText: entercity,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: city,
                subTitle: '',
              ),
              padding10,
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your state';
                  }
                  return null;
                },
                texfieldHeight: 54.h,
                controller: stateController,
                hintText: enterstate,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: state,
                subTitle: '',
              ),
              padding15,
              UAddressSelectCard(
                item: addressType,
                customTextController: customAddressController,
              ),
              padding50,
            ]),
          ),
        ),
      ),
    );
  }
}
