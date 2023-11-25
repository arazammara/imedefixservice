import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_imports/common_libs.dart';
import '../widget/speciallized_doctor_card.dart';

class SpecializedDoctorsScreen extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  const SpecializedDoctorsScreen(
      {Key? key, required this.categoryName, required this.categoryImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: bookAppointment,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Speciallized at $categoryName",
                    style: getSemiBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size16)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: Image.asset(
                    categoryImage,
                    height: 74.h,
                    width: 74.h,
                  ),
                ),
              ],
            ),
            padding10,
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SpecializedDoctorsCard(
                    image: doctor1Image,
                    name: "Dr Moosa",
                    description:
                        "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
                    rating: 4.5,
                    price: 200,
                    availableTime: "Today",
                    onBook: () {
                      Navigator.pushNamed(context, AppRoutes.userAppointment);
                    },
                    hospitalAddress: "Street 1, Partna, Bihar, India",
                    hospitalName: "The great Hospital",
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
