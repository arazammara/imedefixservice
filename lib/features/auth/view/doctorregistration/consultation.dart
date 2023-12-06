import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class ConsultaionandTime extends StatefulWidget {
  const ConsultaionandTime({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  State<ConsultaionandTime> createState() => _ConsultaionandTimeState();
}

class _ConsultaionandTimeState extends State<ConsultaionandTime>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  final TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Container(
                height: 60.h,
                decoration: BoxDecoration(
                  color: MyColors.lightgrey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TabBar(
                  indicatorPadding: EdgeInsets.zero,
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      MyColors.appColor1,
                      MyColors.appColor,
                    ]),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: Colors.green,
                  ),
                  labelColor: MyColors.white,
                  unselectedLabelColor: MyColors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: 170.w,
                        child: const Center(child: Text('once')),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 170.w,
                        child: const Center(child: Text('Daily')),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 170.w,
                        child: const Center(child: Text('weekly')),
                      ),
                    ),
                  ],
                ),
              ),
              padding10,
              _tabController.index == 2
                  ? SizedBox(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: MyColors.grey.withOpacity(0.50),
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      weekdaysname[index].toString()[0],
                                      style: getBoldStyle(
                                          color: MyColors.grey, fontSize: 22),
                                    ),
                                    Text(
                                      weekdaysname[index],
                                      style: getBoldStyle(
                                          color: MyColors.grey, fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  : _tabController.index == 0
                      ? CustomTextField(
                          validatorFn: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          texfieldHeight: 60.h,
                          controller: namecontroller,
                          hintText: 'Date',
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          obscure: false,
                          label: '',
                          subTitle: '',
                        )
                      : Column(
                          children: [
                            CustomTextField(
                              validatorFn: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              texfieldHeight: 60.h,
                              controller: namecontroller,
                              hintText: 'Date From',
                              onChanged: (value) {},
                              onFieldSubmitted: (value) {},
                              obscure: false,
                              label: '',
                              subTitle: '',
                            ),
                            CustomTextField(
                              validatorFn: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              texfieldHeight: 60.h,
                              controller: namecontroller,
                              hintText: 'Date Till',
                              onChanged: (value) {},
                              onFieldSubmitted: (value) {},
                              obscure: false,
                              label: '',
                              subTitle: '',
                            )
                          ],
                        ),
              CustomTextField(
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                texfieldHeight: 60.h,
                controller: namecontroller,
                hintText: 'Time From',
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: '',
                subTitle: '',
              ),
              CustomTextField(
                borderRadius: 12,
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                texfieldHeight: 60.h,
                controller: namecontroller,
                hintText: 'Time Till',
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: '',
                subTitle: '',
              ),
              CustomTextField(
                borderRadius: 12,
                validatorFn: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                texfieldHeight: 60.h,
                controller: namecontroller,
                hintText: 'Consultation Fees',
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: '',
                subTitle: '',
              ),
              padding10,
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Standard Duration: 30 - 60 Minutes',
                      style: getSemiBoldStyle(
                          color: MyColors.grey, fontSize: MyFonts.size14),
                    ),
                  ],
                ),
              ),
              padding20,
              NextButton(
                text: 'Next',
                isbackbuton: true,
                onPressed: widget.onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }

  final List weekdaysname = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
}
