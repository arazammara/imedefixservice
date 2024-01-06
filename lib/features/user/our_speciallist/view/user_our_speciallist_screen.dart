import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/user_all_speciallist.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserOurSpecialListScreen extends StatelessWidget {
  const UserOurSpecialListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
            onPressed: () {
              Navigator.of(context).pop();
            },
            appBarTitle: 'Our Specialization'),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.homeBg), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                CustomTextField(
                  validatorFn: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  leadingIconPath: AppAssets.search,
                  trailingIconPath: AppAssets.filter,
                  texfieldHeight: 60.h,
                  controller: TextEditingController(),
                  hintText: 'Search Doctor / Condition',
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
                  leadingIconPath: AppAssets.pmap,
                  trailingIconPath: AppAssets.arrowleft,
                  texfieldHeight: 60.h,
                  controller: TextEditingController(),
                  hintText: 'Choose Location',
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: '',
                  subTitle: '',
                ),
                const UAllSpecialList(),
              ],
            ),
          ),
        ));
  }
}
