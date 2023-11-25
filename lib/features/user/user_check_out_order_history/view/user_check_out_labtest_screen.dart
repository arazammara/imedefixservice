import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/search_bar.dart';
import 'package:idaawee/features/user/user_check_out_order_history/widget/u_common_check_out_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserCheckOutLabTest extends StatefulWidget {
  const UserCheckOutLabTest({super.key});

  @override
  State<UserCheckOutLabTest> createState() => _UserCheckOutLabTestState();
}

class _UserCheckOutLabTestState extends State<UserCheckOutLabTest> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: labtest,
      ),
      body: Column(
        children: [
          SearchBars(
            controller: searchController,
            hintText: search,
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
            sort: () {},
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
                        itemCount: 6,
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return UCommonCheckOutCard(
                              isPharmacy: false,
                              orderId: 'hka-48338-71309388',
                              orderDate: 'tue, 21 feb 2023',
                              orderPrice: 479,
                              image: AppAssets.doctorpro,
                              orderTitle: 'Dr. Aahil',
                              orderSubTitle: 'Cardialogist',
                              orderStatus: 'ordered',
                              viewdetail: () {});
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
}
