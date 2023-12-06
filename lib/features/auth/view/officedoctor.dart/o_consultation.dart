import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_similar_doctor.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class Office_ConsultaionandTime extends StatefulWidget {
  const Office_ConsultaionandTime({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  State<Office_ConsultaionandTime> createState() =>
      _Office_ConsultaionandTimeState();
}

class _Office_ConsultaionandTimeState extends State<Office_ConsultaionandTime>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
                        child: const Center(child: Text('Add Manually')),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 170.w,
                        child: const Center(child: Text('Imedifix Doctor')),
                      ),
                    ),
                  ],
                ),
              ),
              padding10,
              _tabController.index == 1
                  ? Column(
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
                          hintText: 'Search By spciality',
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
                          hintText: 'Search By Name',
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          obscure: false,
                          label: '',
                          subTitle: '',
                        ),
                      ],
                    )
                  : USimilarDoctor(
                      isaddingdoctor: true,
                      name: 'Dr. Berlin Elizerd',
                      speciality: 'Medicine Specialist',
                      image: 'assets/images/img.png',
                      rating: 4.5,
                      review: '452',
                      onPress: () {},
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
