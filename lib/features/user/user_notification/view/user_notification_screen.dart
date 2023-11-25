import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_notification/widget/u_notification_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserNotificationScreen extends StatelessWidget {
  const UserNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: notification,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      news,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        markAll,
                        style: getRegularStyle(
                            color: MyColors.black, fontSize: MyFonts.size16),
                      ),
                    )
                  ],
                ),
                padding10,
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: const UNotificationCard(
                          date: '1st July, 2023',
                          timeago: '13 min ago',
                          title: '"Lorem ipsum dolor sit amet',
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
