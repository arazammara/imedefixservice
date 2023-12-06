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
              title: const Text('Weekly Stats'),
            ),
            Row(
              children: [
                0,
                1,
              ]
                  .map((e) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                weeky = e;
                              });
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: e != weeky
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
                                      color: e != weeky
                                          ? Colors.black
                                          : Colors.white),
                                ),
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
              title: const Text('Evening Stats'),
            ),
            Row(
              children: [
                0,
                1,
              ]
                  .map((e) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                evening = e;
                              });
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: e != evening
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
                                  '8:00 Am',
                                  style: getBoldStyle(
                                      color: e != evening
                                          ? Colors.black
                                          : Colors.white),
                                ),
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

  int weeky = 0;
  int evening = 0;
  int days = 0;
}
