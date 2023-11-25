import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_rectangular_cached_network_image.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';

import 'package:idaawee/utils/constants/font_manager.dart';

class UDoctorAppointmentCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final String description;
  final VoidCallback onTap;

  const UDoctorAppointmentCard({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152.h,
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color(0xffE5E9EB)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 10.h, bottom: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 162.w, maxHeight: 48.h),
                  child: Text(name,
                      style: getMediumStyle(
                          color: MyColors.black, fontSize: MyFonts.size18)),
                ),
                padding6,
                Container(
                  constraints: BoxConstraints(maxWidth: 162.w, maxHeight: 48.h),
                  child: Text(description,
                      style: getRegularStyle(
                          color: MyColors.textLightColor,
                          fontSize: MyFonts.size12)),
                ),
                padding10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onPressed: onTap,
                      buttonText: 'Book',
                      backColor: MyColors.themebBluishGreyColor,
                      buttonHeight: 26.h,
                      buttonWidth: 70.w,
                      textStyle: getMediumStyle(
                          color: MyColors.whiteColor, fontSize: MyFonts.size12),
                    ),
                    padding10,
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: MyColors.themeOrangeColor,
                          size: 17.h,
                        ),
                        padding3,
                        Text(rating.toString(),
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size16)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding16,
          CachedRectangularNetworkImageWidget(
            height: 152,
            width: 136,
            image: image,
          ),
        ],
      ),
    );
  }
}
