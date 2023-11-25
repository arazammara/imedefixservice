import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_genetic_testing_lab_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UGeneticTestingLabSection extends StatelessWidget {
  const UGeneticTestingLabSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(geneticTestinglabnearyou,
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size18)),
              Text(seeAll,
                  style: getRegularStyle(
                      color: MyColors.grey, fontSize: MyFonts.size14)),
            ],
          ),
          padding15,
          SizedBox(
            height: 620.h,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: UGeneticTestingLabCard(
                      consultant: 'Consultant',
                      address: 'nagod, satna',
                      image: AppAssets.profile,
                      labAddress: '',
                      labName: 'Loram Ipsem Lab ',
                      name: 'Doctor Samantha',
                      profession: 'Professional',
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
