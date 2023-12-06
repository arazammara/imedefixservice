import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';

class timingpagehiring extends StatefulWidget {
  const timingpagehiring({super.key});

  @override
  State<timingpagehiring> createState() => _timingpagehiringState();
}

class _timingpagehiringState extends State<timingpagehiring> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/images/sun.png',
                height: 12.h,
                width: 12.w,
              ),
              title: Text('Weekly Stats'),
            ),
            Row(
              children: [
                0,
                1,
              ]
                  .map((e) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                gradient: e != 1
                                    ? null
                                    : const LinearGradient(
                                        colors: [
                                            MyColors.appColor1,
                                            MyColors.appColor,
                                          ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                '9:00 Am',
                                style: getBoldStyle(
                                    color:
                                        e != 1 ? Colors.black : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/moon.png',
                height: 12.h,
                width: 12.w,
              ),
              title: Text('Evening Stats'),
            ),
            Row(
              children: [0, 1]
                  .map((e) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                '08:00 AM',
                                style: getBoldStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ));
  }
}
