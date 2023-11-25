import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_check_out_order_history/widget/u_check_out_order_history_section.dart';

class UserCheckOutOrderHistory extends StatelessWidget {
  const UserCheckOutOrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: checkOrdersHistory,
      ),
      body: UCheckOutOrderHistorySection(),
    );
  }
}
