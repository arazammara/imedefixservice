import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_profile/widget/u_expand_tile_widgets.dart';

class UserFAQScreen extends StatelessWidget {
  const UserFAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: fAQ,
      ),
      body: SizedBox(
        height: 812.h,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                UExpandTileWidgets(
                  title: wherecanIwatch,
                  desc:
                      'Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis. ',
                ),
                UExpandTileWidgets(
                  title: thisisspaceforfrequentlyaskedquestionnumber,
                  desc:
                      'Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis. ',
                ),
                UExpandTileWidgets(
                  title: thisisspaceforfrequentlyaskedquestionnumber,
                  desc:
                      'Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis. ',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
