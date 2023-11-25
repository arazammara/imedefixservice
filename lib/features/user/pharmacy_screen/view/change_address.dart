import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class ChangeAddress extends StatelessWidget {
  ChangeAddress({super.key});
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.h,
            color: MyColors.black94,
          ),
        ),
        centerTitle: true,
        title: Text(
          address,
          style: getSemiBoldStyle(
              color: MyColors.black94, fontSize: MyFonts.size16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 18.h,
                      width: 18.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          border: Border.all(color: MyColors.searchTextColor)),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child:
                            CircleAvatar(backgroundColor: MyColors.blueaccent),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '$address-1',
                      style: getMediumStyle(
                          color: MyColors.black, fontSize: MyFonts.size14),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AppAssets.edit2,
                          height: 16.h,
                          width: 16.h,
                        )),
                    SizedBox(
                      width: 12.w,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AppAssets.trash,
                          height: 16.h,
                          width: 16.h,
                        )),
                  ],
                ),
              ],
            ),
            CustomTextField(
              texfieldHeight: 97.h,
              maxLines: 2,
              showLabel: false,
              controller: addressController,
              hintText: enteryouraddress,
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              obscure: false,
              label: '',
              subTitle: '',
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          color: MyColors.appColor,
          height: 60.h,
          child: Center(
              child: Text(
            addnewaddress,
            style: getSemiBoldStyle(
                color: MyColors.white, fontSize: MyFonts.size14),
          )),
        ),
      ),
    );
  }
}
