import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/report/widget/u_report_status_widget.dart';
import 'package:idaawee/features/user/report/widget/u_status_card.dart';

import '../../../../commons/common_widgets/common_app_bar.dart';
import '../../../../utils/constants/assets_manager.dart';

class ReportDetailsScreen extends StatefulWidget {
  final String title;
  const ReportDetailsScreen({super.key, required this.title});

  @override
  State<ReportDetailsScreen> createState() => _ReportDetailsScreenState();
}

class _ReportDetailsScreenState extends State<ReportDetailsScreen> {
  final List<String> items = [
    'BMP',
    'CMP',
    'ESR',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        appBarTitle: widget.title,
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
              const UReportStatusWidget(),
              padding10,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: UStatusCard(
                        title: items[index],
                        date: '02 Sep 2023',
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
