import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/user_cancel_order_screen_two.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_cancel_reason_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserCancelOrderScreenOne extends StatefulWidget {
  const UserCancelOrderScreenOne({super.key});

  @override
  State<UserCancelOrderScreenOne> createState() =>
      _UserCancelOrderScreenOneState();
}

class _UserCancelOrderScreenOneState extends State<UserCancelOrderScreenOne> {
  var messageController = TextEditingController();
  int selectIndex = 0;
  List<String> categories = [
    productchange,
    quantitychange,
    idonotrequiretheproductanymore,
    orderedbymistake,
    willplaceaneworder,
    deliverypromisedidnotmeetexpectation,
    others
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: cancelorder,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reasonforcancellation,
              style:
                  getBoldStyle(color: MyColors.black, fontSize: MyFonts.size16),
            ),
            padding5,
            Text(
              pleasetelluscorrectreasonforcancellation,
              style: getRegularStyle(
                  color: MyColors.black, fontSize: MyFonts.size14),
            ),
            padding24,
            Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                children: List.generate(categories.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: UCancelReasonCard(
                        text: categories[index],
                        index: index,
                        selectIndex: selectIndex,
                        onTap: () {
                          setState(() {
                            selectIndex = index;
                          });
                        }),
                  );
                }),
              ),
            ),
            padding10,
            if (selectIndex == 6)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100.h,
                    width: 298.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border:
                            Border.all(color: MyColors.lightContainerColor)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: messageController,
                        maxLines: 3,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: writeyourcomments,
                            hintStyle: getRegularStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size14)),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => UserCancelOrderScreenTwo()));
        },
        child: Container(
          color: MyColors.appColor,
          height: 60.h,
          child: Center(
              child: Text(
            cancelOrder,
            style: getSemiBoldStyle(
                color: MyColors.white, fontSize: MyFonts.size14),
          )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable

