import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explor_detail_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_product_banner.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_seller_information_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_similar_product_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserExploreProductScreen extends StatefulWidget {
  const UserExploreProductScreen({super.key});

  @override
  State<UserExploreProductScreen> createState() =>
      _UserExploreProductScreenState();
}

class _UserExploreProductScreenState extends State<UserExploreProductScreen> {
  int index = 0;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: explore,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UExploreProductBanner(),
              const UExplorDetailSection(),
              padding40,
              const UExploreSimilarProductSection(),
              padding15,
              const UExploreSellerInformationSection(),
              padding120,
              Container(
                height: 1,
                width: 1.sw,
                color: MyColors.searchTextColor,
              ),
              SizedBox(
                height: 60.h,
                width: 1.sw,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        padding: 0,
                        onPressed: () {},
                        buttonText: addtocart,
                        buttonHeight: 60.h,
                        borderRadius: 0.r,
                        backColor: MyColors.white,
                        textStyle: getSemiBoldStyle(
                            color: MyColors.appColor, fontSize: MyFonts.size14),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        padding: 0,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRoutes.uploadPresentation);
                        },
                        buttonText: buynow,
                        buttonHeight: 60.h,
                        borderRadius: 0.r,
                        backColor: MyColors.appColor,
                        textStyle: getSemiBoldStyle(
                            color: MyColors.white, fontSize: MyFonts.size14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
