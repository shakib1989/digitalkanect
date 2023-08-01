import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/widgets/avaliable_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

import 'components/subscription_plan_sheet.dart';

class BalanceScreen extends StatefulWidget {
  static Future start(BuildContext context) async {
    const page = BalanceScreen();
    final route = MaterialPageRoute(builder: (context) => page);
    Navigator.of(context, rootNavigator: true).push(route);
  }

  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      allowBack: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 24.w,
            height: 24.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
            child: SvgPicture.asset(SvgAssets.backArrow),
          ),
        ),
      ),
      body: Container(
        height: double.maxFinite,
        color: const Color(0xffF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ColoredBox(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildEarningAndBalanceArea(),
                    SizedBox(height: 34.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                        bottom: 24.w,
                      ),
                      child: const AvailableBalance(),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(StyleDimens.radiusLarge),
                            topRight: Radius.circular(StyleDimens.radiusLarge),
                          )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ThemeTexts.black.labelMedium(
                              context: context,
                              text: context.l10n.selectPlan,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SubscriptionPlanSheet(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEarningAndBalanceArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Row(
        children: [
          SizedBox(
            width: 150.w,
            height: 42.h,
            child: _buildEarnings(),
          ),
          const Spacer(),
          SizedBox(
            width: 150.w,
            height: 42.h,
            child: _buildBalance(),
          )
        ],
      ),
    );
  }

  Widget _buildBalance() {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(9.w),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.w),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.w,
          ),
        ),
      ),
      onPressed: () {},
      child: ThemeTexts.onPrimary.labelSmall(
        context: context,
        text: context.l10n.balanceTitle,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildEarnings() {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(9.w),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.w),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.w,
          ),
        ),
      ),
      onPressed: () {},
      child: ThemeTexts.primary.labelSmall(
        context: context,
        text: context.l10n.earningsTitle,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
