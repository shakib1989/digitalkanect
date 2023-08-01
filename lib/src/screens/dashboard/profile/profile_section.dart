import 'package:digitalkanect/src/widgets/avaliable_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

import '../../balance/balance_screen.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: const AvailableBalance(),
          ),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              BalanceScreen.start(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(StyleDimens.radiusMedium),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ThemeTexts.black.bodyLarge(
                      context: context,
                      text: ' Balance ',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
