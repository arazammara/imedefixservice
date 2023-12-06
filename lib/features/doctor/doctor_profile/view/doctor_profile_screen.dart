import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_position_picture.dart';
import 'package:idaawee/features/doctor/doctor_profile/controller/main_menu_controller.dart';
import 'package:idaawee/features/doctor/doctor_profile/view/doctor_edit_profile_screen.dart';
import 'package:idaawee/features/doctor/doctor_profile/widgets/d_profile_tile.dart';
import 'package:idaawee/routes/route_manager.dart';

import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class DoctorProfileScreen extends ConsumerStatefulWidget {
  const DoctorProfileScreen({
    super.key,
  });

  @override
  ConsumerState<DoctorProfileScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends ConsumerState<DoctorProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  int selectdpage = 0;

  @override
  Widget build(BuildContext context) {
    final mainMenuCtr = ref.watch(dProfileMainprovider);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.appColor1,
                  MyColors.appColor,
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 90.w, top: 50.h),
                        child: Image.asset(
                          AppAssets.loginBg,
                          height: 272.h,
                          width: 307.7.w,
                          color: MyColors.white.withOpacity(0.1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Image.asset(
                          AppAssets.bgGradient,
                        ),
                      ),
                      Positioned(
                        top: 30.h,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    mainMenuCtr.isedit == true
                                        ? 'Edit Profile'
                                        : 'Profile',
                                    style: getBoldStyle(
                                        color: MyColors.white,
                                        fontSize: MyFonts.size26),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: mainMenuCtr.isedit == false
                      ? buildDoctorProfileFields(
                          onPressed: () => mainMenuCtr.setIndex(true),
                        )
                      : DoctorEditProfileScreen(
                          onPressed: () => mainMenuCtr.setIndex(false),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}

class buildDoctorProfileFields extends StatelessWidget {
  buildDoctorProfileFields({super.key, required this.onPressed});
  final VoidCallback onPressed;

  final TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 1.sw,
          decoration: const BoxDecoration(
            color: MyColors.lightBg,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  padding35,
                  Text(
                    'Dr. Maria Elena',
                    style: getBoldStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'mariaelena786@outlook.com',
                    style: getBoldStyle(color: Colors.grey, fontSize: 13),
                  ),
                  DoctorProfileTile(
                    onPressed: () {},
                    text: "My Profile",
                  ),
                  DoctorProfileTile(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.doctorwalletScreen);
                    },
                    text: "My Wallet",
                  ),
                  DoctorProfileTile(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.joinOfficePage);
                    },
                    text: "Join Office",
                  ),
                  DoctorProfileTile(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.addPaymentMethod);
                    },
                    text: "Payment Method",
                  ),
                  DoctorProfileTile(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.settingsPageScreen);
                    },
                    text: "Settings",
                  ),
                  DoctorProfileTile(
                    onPressed: () {},
                    text: "Help Center",
                  ),
                  DoctorProfileTile(
                    onPressed: () {},
                    text: "Information Center",
                  ),
                  DoctorProfileTile(
                    onPressed: () {},
                    text: "Log Out",
                  ),
                  padding80
                ],
              ),
            ),
          ),
        ),
        CommonpositionPicture(
          onPressed: onPressed,
          picturepath: AppAssets.doctorpro,
        )
      ],
    );
  }
}
