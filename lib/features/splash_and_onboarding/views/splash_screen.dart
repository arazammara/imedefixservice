import 'package:date_picker_timeline/extra/color.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../commons/common_imports/common_libs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(
            context, AppRoutes.onBoardingScreens));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: MyColors.appColor,
            image: DecorationImage(
                image: AssetImage(AppAssets.bgImage), fit: BoxFit.cover)),
      ),
    );
  }
}
