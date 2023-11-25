import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/account_type/widget/account_type_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({super.key});

  @override
  State<AccountTypeScreen> createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 41.h,
              ),
              Text(
                accountType,
                style: getSemiBoldStyle(
                    color: MyColors.black, fontSize: MyFonts.size24),
              ),
              SizedBox(
                height: 44.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AccountTypeCard(
                    image: AppAssets.patient,
                    title: patient,
                    subTitle: patientDec,
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    selectIndex: index,
                    index: 0,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  AccountTypeCard(
                    image: AppAssets.doctor,
                    title: doctor,
                    subTitle: doctorDec,
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    selectIndex: index,
                    index: 1,
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context,
                        index == 0
                            ? AppRoutes.signUpScreen
                            : AppRoutes.becomeaDoctorScreen);
                  },
                  buttonText: 'Done',
                  fontSize: MyFonts.size18,
                  borderRadius: 12,
                  backColor: MyColors.appColor,
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
