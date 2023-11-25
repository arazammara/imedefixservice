import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/search_bar.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/user_order_history_detail_screen.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserOrderHistoryScreen extends StatefulWidget {
  const UserOrderHistoryScreen({super.key});

  @override
  State<UserOrderHistoryScreen> createState() => _UserOrderHistoryScreenState();
}

class _UserOrderHistoryScreenState extends State<UserOrderHistoryScreen> {
  var searchController = TextEditingController();
  bool isFilter = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: ordersHistory,
      ),
      body: Column(
        children: [
          SearchBars(
            controller: searchController,
            hintText: search,
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            sort: () {
              _showPopUpMenu(const Offset(10, 5));
            },
            microphone: () {},
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListView.builder(
                        itemCount: 5,
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return UOrderHistoryCard(
                              orderId: 'hka-48338-71309388',
                              orderDate: 'tue, 21 feb 2023',
                              orderPrice: 479,
                              image: AppAssets.item,
                              orderTitle:
                                  'healthkart hk vitals super strength fish oil purity 84%, ',
                              orderSubTitle: '60 softgels',
                              orderStatus: 'ordered',
                              viewdetail: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            UserOrderHistoryDetailScreen()));
                              });
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showPopUpMenu(Offset offset) async {
    final screenSize = MediaQuery.of(context).size;
    double left = offset.dx;
    double top = 150.h;
    double right = 3;
    double bottom = screenSize.height - offset.dy;

    await showMenu<MenuItemType>(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: const BorderSide(color: MyColors.borderColor)),
      position: RelativeRect.fromLTRB(left, top, right, bottom),
      items: MenuItemType.values
          .map((MenuItemType menuItemType) => PopupMenuItem<MenuItemType>(
                value: menuItemType,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (menuItemType == MenuItemType.Recent)
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(sortby,
                                  style: getRegularStyle(
                                      color: MyColors.pharmacytextColor,
                                      fontSize: MyFonts.size12)),
                              Image.asset(
                                AppAssets.cancel,
                                height: 8.h,
                                width: 8.h,
                                color: MyColors.black,
                              )
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    Text(
                      getMenuItemString(menuItemType),
                      style: getRegularStyle(
                          color: MyColors.pharmacytextColor,
                          fontSize: MyFonts.size14),
                    ),
                  ],
                ),
              ))
          .toList(),
    ).then((MenuItemType? item) {
      if (item == MenuItemType.Recent) {
        //
      } else {
        //
      }
    });
  }
}

enum MenuItemType {
  // ignore: constant_identifier_names
  Recent,
  // ignore: constant_identifier_names
  Oldest,
}

getMenuItemString(MenuItemType menuItemType) {
  switch (menuItemType) {
    case MenuItemType.Recent:
      return "Recent";
    case MenuItemType.Oldest:
      return "Oldest";
  }
}
