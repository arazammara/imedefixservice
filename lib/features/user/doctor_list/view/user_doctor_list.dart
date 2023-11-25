import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_appointment_section.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_consultation_section.dart';
import 'package:idaawee/commons/common_widgets/search_bar.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_page_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserDoctorList extends StatefulWidget {
  const UserDoctorList({super.key});

  @override
  State<UserDoctorList> createState() => _UserDoctorListState();
}

class _UserDoctorListState extends State<UserDoctorList> {
  var searchController = TextEditingController();

  bool isFilter = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              toolbarHeight: isFilter == true ? 165.h : 125.h,
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
                listofDoctors,
                style: getSemiBoldStyle(
                    color: MyColors.black94, fontSize: MyFonts.size16),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Column(
                  children: [
                    SearchBars(
                      controller: searchController,
                      hintText: search,
                      onChanged: (value) {},
                      onFieldSubmitted: (value) {},
                      sort: () {
                        setState(() {
                          isFilter = !isFilter;
                        });
                      },
                      microphone: () {},
                    ),
                    isFilter == true
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Container(
                                height: 40.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 0.8))),
                                child: TabBar(
                                  unselectedLabelColor: MyColors.black,
                                  unselectedLabelStyle: getMediumStyle(
                                      color: MyColors.black,
                                      fontSize: MyFonts.size16),
                                  labelColor: MyColors.black,
                                  labelStyle: getMediumStyle(
                                      color: MyColors.black,
                                      fontSize: MyFonts.size16),
                                  indicatorColor: Colors.blue,
                                  indicator: const UnderlineTabIndicator(
                                    borderSide: BorderSide(
                                        color: MyColors.blueaccent, width: 2.0),
                                  ),
                                  tabs: const [
                                    Text(
                                      consultation,
                                    ),
                                    Text(
                                      appointment,
                                    ),
                                  ],
                                )),
                          )
                        : Container(),
                  ],
                ),
              )),
          body: isFilter == true
              ? const TabBarView(
                  children: [
                    UConsultationSection(),
                    Appointment(),
                  ],
                )
              : UFilterPageSection(
                  onFilter: () {
                    setState(() {
                      isFilter = true;
                    });
                  },
                )),
    );
  }
}
