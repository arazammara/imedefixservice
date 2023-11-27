import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/record_screen/widget/appointment_date_time.dart';
import 'package:idaawee/features/user/record_screen/widget/chat_history_widget.dart';
import 'package:idaawee/features/user/record_screen/widget/feedback_widget.dart';
import 'package:idaawee/features/user/record_screen/widget/record_card_widget.dart';
import 'package:idaawee/features/user/record_screen/widget/share_document_widget.dart';
import '../../../../commons/common_widgets/common_app_bar.dart';
import '../../../../utils/constants/assets_manager.dart';

class AppointmentDetailScreen extends StatefulWidget {
  const AppointmentDetailScreen({super.key});

  @override
  State<AppointmentDetailScreen> createState() =>
      _AppointmentDetailScreenState();
}

class _AppointmentDetailScreenState extends State<AppointmentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(appBarTitle: 'Appointment Details'),
        body: Container(
          height: 812.h,
          width: 1.sw,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.homeBg),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(18.h),
              child: Column(
                children: [
                  RecordCardWidget(
                    image: 'assets/images/img.png',
                    name: 'Dr. Maria Elena',
                    speciality: 'Psychologist',
                    qualification: 'M.B.B.S., F.C.P.S (Psychology)',
                    status: AppAssets.gold,
                    onTap: () {},
                  ),
                  padding10,
                  const AppointmentDateTime(
                    time: '09:00 AM',
                    date: 'Monday , 31 August',
                  ),
                  padding10,
                  const ShareDocumentWidget(
                    shareWith: 'Dr. Maria Elena',
                    documents: 1,
                  ),
                  padding10,
                  const ChatHistoryWidget(),
                  padding10,
                  const FeedbackWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}
