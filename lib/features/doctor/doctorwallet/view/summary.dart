import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:idaawee/routes/route_manager.dart';

import '../../../../utils/constants/assets_manager.dart';

class WalletSummaryPage extends StatelessWidget {
  const WalletSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        appBarTitle: 'Payment Summary',
      ),
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.homeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                padding10,
                                Text(
                                  'Summary',
                                  style: getBoldStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                padding15,
                                buildheadtitlewidget(
                                    'Account Tittle', 'Account Holder'),
                                padding10,
                                buildheadtitlewidget(
                                    'Account Number', '.... .... .... 5984'),
                                padding10,
                                buildheadtitlewidget('Date', '20 Sep 2023'),
                                padding10,
                                buildheadtitlewidget(
                                    'Transaction Id', '#37698'),
                              ],
                            ),
                          )),
                          dottedlined(),
                          Expanded(
                              child: SizedBox(
                            child: Column(
                              children: [
                                padding24,
                                buildheadtitlewidget(
                                    'Transfer Amount', '\$500.00'),
                                padding10,
                                buildheadtitlewidget(
                                    'Transfer fees', '\$20.00'),
                                Expanded(child: Container()),
                                buildheadtitlewidget(
                                    'Balance Amont', '\$1612.458'),
                                padding20
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    const Positioned(
                        left: -20,
                        top: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffE9F9F6),
                        )),
                    const Positioned(
                        right: -20,
                        top: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffE9F9F6),
                        ))
                  ],
                ),
              ),
              padding16,
              padding16,
              NextButton(
                  back: () {},
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.paymntSuccessfull);
                  },
                  isbackbuton: false,
                  text: 'Next')
            ],
          ),
        ),
      ),
    );
  }

  dottedlined() {
    return const DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: Colors.black,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }

  buildheadtitlewidget(title, amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getBoldStyle(color: Colors.grey, fontSize: 16),
        ),
        Text(
          amount,
          style: getBoldStyle(color: Colors.grey, fontSize: 16),
        )
      ],
    );
  }
}
