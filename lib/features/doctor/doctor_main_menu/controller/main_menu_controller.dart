import 'package:idaawee/features/doctor/doctor_profile/view/doctor_profile_screen.dart';
import 'package:idaawee/features/doctor/home%20copy/view/user_home_screen.dart';

import 'package:idaawee/features/user/record_screen/view/record_screen.dart';
import 'package:idaawee/features/user/report/view/user_report_screen.dart';

import '../../../../commons/common_imports/apis_commons.dart';
import '../../../../commons/common_imports/common_libs.dart';

final dMainMenuProvider =
    ChangeNotifierProvider((ref) => DMainMenuController());

class DMainMenuController extends ChangeNotifier {
  List<Widget> screens = [
    const DoctorHomeScreens(),
    // const DoctorCreateOfferScreen(),
    const UserReportScreen(),
    Container(),
    const RecordScreen(),
    const DoctorProfileScreen(),
  ];

  int _index = 0;
  int get index => _index;
  setIndex(int id) {
    _index = id;
    notifyListeners();
  }
}
