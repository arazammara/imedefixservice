import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_book_appointment_widget.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

import '../../../../commons/common_widgets/CustomTextFields.dart';

class UserOurSpecialistDetailScreen extends StatelessWidget {
  const UserOurSpecialistDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.of(context).pop();
        },
        appBarTitle: 'Our Specialization',
      ),
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.homeBg), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: CustomTextField(
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
              ),
              ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const UBookAppointmentWidget();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
