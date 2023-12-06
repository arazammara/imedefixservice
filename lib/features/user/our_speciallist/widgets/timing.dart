import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';

class timingpage extends StatefulWidget {
  const timingpage({super.key});

  @override
  State<timingpage> createState() => _timingpageState();
}

class _timingpageState extends State<timingpage> {
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
              children: [0, 1, 2, 3]
                  .map((e) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text('Monday'),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Row(
              children: [0, 1, 2, 4]
                  .map((e) => Expanded(
                        child: e == 4
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                    child: Text('Monday'),
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
              title: Text('Morning Stats'),
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
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text('08:00 AM'),
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
