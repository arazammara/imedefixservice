import 'package:idaawee/features/doctor/create_offer/view/doctor_create_offer_screen.dart';
import 'package:idaawee/features/doctor/doctor_profile/view/doctor_profile_screen.dart';
import 'package:idaawee/features/doctor/home/views/doctor_home_screen.dart';

import '../../../../commons/common_imports/apis_commons.dart';
import '../../../../commons/common_imports/common_libs.dart';


final dMainMenuProvider = ChangeNotifierProvider((ref) => DMainMenuController());


class DMainMenuController extends ChangeNotifier {
  List<Widget> screens = [
    const DoctorHomeScreen(),
    const DoctorCreateOfferScreen(),
    const DoctorProfileScreen(),
  ];

  int _index = 0;
  int get index => _index;
  setIndex(int id) {
    _index = id;
    notifyListeners();
  }
}
