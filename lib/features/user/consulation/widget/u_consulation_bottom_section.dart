import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/u_common_privact_policy_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UConsulationBottomSection extends StatelessWidget {
  const UConsulationBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          UCommonPrivacyPolicyCard(
            requiredBorder: false,
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Read more',
            text: privacyPolicy,
            image: AppAssets.pp,
          ),
          padding16,
          UCommonPrivacyPolicyCard(
            requiredBorder: false,
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Read more',
            text: instructions,
            image: AppAssets.inst,
          ),
        ],
      ),
    );
  }
}
