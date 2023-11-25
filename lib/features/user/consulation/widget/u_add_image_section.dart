import 'dart:io';

import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAddImageSection extends StatelessWidget {
  final Function() onTap;
  final File? image;
  const UAddImageSection({super.key, required this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          image != null
              ? Row(
                  children: [
                    Container(
                      height: 120.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: image != null
                              ? DecorationImage(
                                  image: FileImage(File(image!.path)),
                                  fit: BoxFit.cover)
                              : null,
                          borderRadius: BorderRadius.circular(6.r),
                          color: MyColors.appColor.withOpacity(0.1)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              : Container(),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 120.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: MyColors.appColor.withOpacity(0.1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.add,
                    height: 47.h,
                    width: 29.w,
                  ),
                  Text(
                    addImage,
                    //  addmoreimages,

                    textAlign: TextAlign.center,
                    style: getRegularStyle(
                        color: MyColors.black, fontSize: MyFonts.size16),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
