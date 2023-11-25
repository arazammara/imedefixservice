import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_category_section.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_consumer_review_section.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_doctor_class_section.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_price_range_section.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_service_type_section.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UFilterPageSection extends StatelessWidget {
  final Function() onFilter;
  const UFilterPageSection({super.key, required this.onFilter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 612.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    filter,
                    style: getBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size24),
                  ),
                  InkWell(
                    onTap: onFilter,
                    child: Image.asset(
                      AppAssets.cross,
                      height: 32.h,
                      width: 32.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const UFilterPriceRangeSection(),
              SizedBox(
                height: 20.h,
              ),
              const UFilterServiceTypSection(),
              SizedBox(
                height: 20.h,
              ),
              const UFilterCategorySection(),
              SizedBox(
                height: 20.h,
              ),
              const DoctorClass(),
              SizedBox(
                height: 20.h,
              ),
              const UFilterConsumerReivewSection(),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
