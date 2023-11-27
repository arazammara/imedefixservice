import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/home/widget/u_popular_doctor_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
class UpopularDoctor extends StatefulWidget {
  const UpopularDoctor({
    super.key,
  });

  @override
  State<UpopularDoctor> createState() => _UpopularDoctorState();
}

class _UpopularDoctorState extends State<UpopularDoctor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Doctor',
                  style: getBoldStyle(
                      color: MyColors.textColor, fontSize: MyFonts.size16)),
              Text('See All',
                  style: getBoldStyle(
                      color: MyColors.appColor, fontSize: MyFonts.size16))
            ],
          ),
          padding16,
          ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: UPopularDoctorCard(
                      onTap: () {},
                      image: AppAssets.gynecologist,
                      name: 'Dr. Berlin Elizerd',
                      speciality: 'Medicine Specialist',
                      rating: 4.7,
                      review: '(3450 reviews)',
                    ),
                  )),
        ],
      ),
    );
  }
}
