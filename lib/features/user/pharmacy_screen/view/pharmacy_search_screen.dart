import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_search_result.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/assets_manager.dart';
import '../widget/pharmacy_search_bar.dart';

class PharmacySearchScreen extends StatefulWidget {
  const PharmacySearchScreen({super.key});

  @override
  State<PharmacySearchScreen> createState() => _PharmacySearchScreenState();
}

class _PharmacySearchScreenState extends State<PharmacySearchScreen> {
  var searchController = TextEditingController();

  List<String> banner = [
    AppAssets.banner,
    AppAssets.banner,
    AppAssets.banner,
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 125.h,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.h,
                color: MyColors.black94,
              ),
            ),
            centerTitle: true,
            title: Text(
              searchaMedicine,
              style: getSemiBoldStyle(
                  color: MyColors.black94, fontSize: MyFonts.size16),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Column(
                children: [
                  PharmacySearchBar(
                    controller: searchController,
                    hintText: search,
                    onChanged: (value) {},
                    onFieldSubmitted: (value) {},
                    sort: () {},
                    microphone: () {},
                  ),
                ],
              ),
            )),
        body: const SingleChildScrollView(
            physics: BouncingScrollPhysics(), child: UPharmacySearchResult()),
      ),
    );
  }
}
