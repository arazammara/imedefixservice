import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_about_details_lab_x_section.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_test_details_section.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_lab_x_banner.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class LabXDetails extends StatefulWidget {
  const LabXDetails({super.key});

  @override
  State<LabXDetails> createState() => _LabXDetailsState();
}

class _LabXDetailsState extends State<LabXDetails> {
  final List<String> imageBanner = [
    AppAssets.xLab,
    AppAssets.xLab,
    AppAssets.xLab,
  ];

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ULabXBanner(imageBanner: imageBanner),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.h,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ],
            ),
            UTestDetailsSection(
                testAbouts:
                    'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa q',
                price: '350',
                isFavorite: isFavorite,
                title: 'ipsum dolor sit amet, consectetur',
                subtitle: 'panayur, chennai.',
                types: 'farm land sale',
                ipsms: 'Kapito',
                dlrcotas: 'Feelas',
                recudes: 'Norawal',
                breathes: 'Sialowat',
                facings: 'south',
                favorite: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                }),
            UAboutDetailLabXSection(
              websiteOnTap: () {},
              subName: 'hari raj',
              image: AppAssets.profile,
              name: 'Doctor Samantha',
              consultant: 'Consultant',
              address:
                  '92/2 ecr road, perunthuravu, near kalpakkam, ecr to marakanam road, chennai.',
              website: 'https://www.hprealestate.co.in',
              dealingIns:
                  'sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
              areaofOperations:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              professional: 'Professional',
            ),
            padding35,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.orderlabScreen);
                },
                buttonText: bookLabTest,
                backColor: MyColors.appColor,
                borderRadius: 6.r,
                fontSize: MyFonts.size18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
