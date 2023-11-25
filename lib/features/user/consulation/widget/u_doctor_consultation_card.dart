
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_rectangular_cached_network_image.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/commons/common_widgets/triangle_widget.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UDoctorConsultationCard extends StatelessWidget {
  final String image;
  final String name;
  final String bannertitle;
  final double rating;
  final String description;
  final VoidCallback onTap;

  const UDoctorConsultationCard({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.description,
    required this.bannertitle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: const Color(0xffE5E9EB)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedRectangularNetworkImageWidget(
                height: 152,
                width: 136,
                image: image,
              ),
              SizedBox(width: 15.w,),
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 20.h, bottom: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth:  162.w,
                          maxHeight: 48.h
                      ),
                      child: Text(name,
                          style: getMediumStyle(
                              color: MyColors.black,
                              fontSize: MyFonts.size18)),
                    ),

                    Container(
                      constraints: BoxConstraints(
                          maxWidth:  162.w,
                          maxHeight: 48.h
                      ),
                      child: Text(description,
                          style: getRegularStyle(
                              color: MyColors.textLightColor,
                              fontSize: MyFonts.size12)),
                    ),

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
                              color: MyColors.whiteColor,
                              fontSize: MyFonts.size12
                          ),
                        ),
                        SizedBox(width: 30.w,),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: MyColors.themeOrangeColor,
                              size: 17.h,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
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
            ],
          ),
        ),
        CustomTriangleCard(
          color: MyColors.themeOrangeColor,
          bannerText: bannertitle,
        ),
      ],
    );
  }
}
