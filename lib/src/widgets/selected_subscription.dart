import 'package:dating_sdk/domain/models/models.dart';
import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/src/blocs/subscription_plan_list/subscription_plan_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

class SelectedSubscription extends StatelessWidget {
  const SelectedSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(StyleDimens.radiusMedium),
      ),
      child: BlocBuilder<SubscriptionPlanListCubit, SubscriptionPlanListState>(
          builder: (context, state) {
        if (state.list.isEmpty) {
          return const SizedBox.shrink();
        }
        final data = state.list[state.selectedIndex];
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildDetails(context, data)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ThemeTexts.primary.labelLarge(
                  context: context,
                  text: '${getAmountString(data)}',
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 33.h),
                _buildBuyNow(context),
              ],
            ),
          ],
        );
      }),
    );
  }

  String getAmountString(SubscriptionPlanModel data) {
    String amountString = '';
    int val = data.amount;
    for (int i = 0; i < data.currencyDecimal; i++) {
      amountString = '${val % 10}$amountString';
      val = val ~/ 10;
    }
    if (int.parse(amountString) == 0) {
      amountString = '${data.currencySymbol} ${val}';
    } else {
      amountString = '${data.currencySymbol} ${val}.$amountString';
    }
    return amountString;
  }

  Widget _buildDetails(BuildContext context, SubscriptionPlanModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildInfo(
          context,
          SvgAssets.subMessage,
          'Messages: ',
          '${data.messages}',
        ),
        SizedBox(height: 12.h),
        buildInfo(
          context,
          SvgAssets.subPhone,
          'Voice Call: ',
          secToText(data.phoneCallInSec),
        ),
        SizedBox(height: 12.h),
        buildInfo(
          context,
          SvgAssets.subVideo,
          'Video Call: ',
          secToText(data.videoCallInSec),
        ),
      ],
    );
  }

  Widget buildInfo(
    BuildContext context,
    String svgImagePath,
    String title,
    String details,
  ) {
    return Row(
      children: [
        SizedBox.square(
          dimension: 24.w,
          child: SvgPicture.asset(
            svgImagePath,
            width: 24.w,
            height: 24.w,
          ),
        ),
        SizedBox(width: 8.w),
        ThemeTexts.tertiary.bodyLarge(
          context: context,
          text: title,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(width: 6.w),
        ThemeTexts.black.bodyLarge(
          context: context,
          text: details,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }

  String secToText(int secs) {
    final hour = 60 * 60;
    final min = 60;
    String text = '';
    if (secs ~/ hour >= 1) {
      text = '${secs ~/ hour}h.';
      secs = secs % hour;
    }
    if (secs ~/ min >= 1) {
      if (text.isNotEmpty) {
        text = '$text ';
      }
      text = '$text${secs ~/ hour}m.';
      secs = secs % min;
    }
    if (secs != 0) {
      if (text.isNotEmpty) {
        text = '$text ';
      }
      text = '$text${secs}s.';
    }
    return text;
  }

  Widget _buildBuyNow(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(8.w),
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
      child: ThemeTexts.onPrimary.bodyLarge(
        context: context,
        text: 'Buy Now',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
