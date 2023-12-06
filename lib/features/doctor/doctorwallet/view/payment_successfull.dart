import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/routes/route_manager.dart';

class PaymntSuccessfull extends StatelessWidget {
  const PaymntSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff222A48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: MyColors.appColor1.withOpacity(0.20),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: MyColors.appColor1.withOpacity(0.80),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: MyColors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: MyColors.appColor1.withOpacity(0.90),
                    child: const Center(
                      child: Icon(
                        Icons.done,
                        color: MyColors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            padding24,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Withdraw Successful',
                  style: getBoldStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
            padding24,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Payment will be transfer \ninto your account within 24 \nworking hours',
                  textAlign: TextAlign.center,
                  style: getBoldStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            padding40,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.udoctormainMainMenuScreen);
                  },
                  isbackbuton: false,
                  text: 'Back to Home'),
            )
          ],
        ),
      ),
    );
  }
}
