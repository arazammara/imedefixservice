import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_widgets/common_rectangular_cached_network_image.dart';

class UPremiumClinicConsultantCard extends StatefulWidget {
  final String image;
  final String name;
  final String hospitalName;
  final String hospitalAddress;
  final String availableTime;
  final int price;
  final Function() favorite;
  final Function() book;
  final double rating;
  final String description;
  final bool isFavorite;

  const UPremiumClinicConsultantCard(
      {super.key,
      required this.image,
      required this.name,
      required this.hospitalName,
      required this.hospitalAddress,
      required this.availableTime,
      required this.price,
      required this.favorite,
      required this.book,
      required this.rating,
      required this.description,
      required this.isFavorite});

  @override
  State<UPremiumClinicConsultantCard> createState() =>
      _UPremiumClinicConsultantCardState();
}

class _UPremiumClinicConsultantCardState
    extends State<UPremiumClinicConsultantCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.14.h,
      width: 1.sw,
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color(0xffE5E9EB)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CachedRectangularNetworkImageWidget(
                width: 140,
                height: 138,
                image: widget.image,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.5, right: 6.5, top: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.frame,
                          height: 15.h,
                          width: 15.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          widget.hospitalName,
                          style: getSemiBoldStyle(
                              color: MyColors.loginScreenTextColor,
                              fontSize: MyFonts.size10),
                        )
                      ],
                    ),
                    padding5,
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.map,
                          height: 15.h,
                          width: 15.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          widget.hospitalAddress,
                          style: getSemiBoldStyle(
                              color: MyColors.loginScreenTextColor,
                              fontSize: MyFonts.size10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 12.0, top: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 162.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.name,
                          style: getMediumStyle(
                              color: MyColors.black, fontSize: MyFonts.size18)),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Icon(
                          isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color:
                              isFavorite ? MyColors.appColor : MyColors.black,
                          size: 17.h,
                        ),
                      )
                    ],
                  ),
                ),
                padding6,
                SizedBox(
                  width: 162.w,
                  child: Text(widget.description,
                      style: getRegularStyle(
                          color: const Color(0xff858585),
                          fontSize: MyFonts.size12)),
                ),
                padding3,
                Text('Available: ${widget.availableTime}',
                    style: getMediumStyle(
                        color: MyColors.loginScreenTextColor,
                        fontSize: MyFonts.size10)),
                padding3,
                SizedBox(
                  width: 162.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Price: ',
                              style: getMediumStyle(
                                  color: MyColors.loginScreenTextColor,
                                  fontSize: MyFonts.size10)),
                          Text('₹ ${widget.price}',
                              style: getSemiBoldStyle(
                                  color: MyColors.loginScreenTextColor,
                                  fontSize: MyFonts.size13)),
                        ],
                      ),
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
                          Text(widget.rating.toString(),
                              style: getSemiBoldStyle(
                                  color: MyColors.black,
                                  fontSize: MyFonts.size16)),
                        ],
                      ),
                    ],
                  ),
                ),
                padding18,
                SizedBox(
                  width: 153.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonHeight: 26.29.h,
                        buttonWidth: 70.28.w,
                        onPressed: widget.book,
                        buttonText: "Book",
                        backColor: MyColors.themebBluishGreyColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
