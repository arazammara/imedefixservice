import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_tap_card.dart';

class UPharmacyTabSection extends StatefulWidget {
  UPharmacyTabSection({super.key});

  @override
  State<UPharmacyTabSection> createState() => _UPharmacyTabSectionState();
}

class _UPharmacyTabSectionState extends State<UPharmacyTabSection> {
  final List<String> list = [menCare, medicine, antiAlergic, vitamins];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 31.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: UPharmacyTapCard(
                    text: list[index],
                    isSelected: index == selectedIndex ? true : false,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              }),
        ));
  }
}
