import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/blocs/balance/balance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/constants/exports.dart';
import 'package:styles/styles.dart';

class AvailableBalance extends StatelessWidget {
  const AvailableBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BalanceCubit, BalanceState>(builder: (context, state) {
      return Container(
        decoration: _getOuterBoxDecoration(),
        padding: EdgeInsets.only(
          left: 8.w,
          right: 8.w,
          top: 8.h,
          bottom: 12.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 4.0,
                bottom: 14.h,
              ),
              child: ThemeTexts.black.labelSmall(
                context: context,
                text: context.l10n.availableBalance,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                buildBalanceInfo(
                  context,
                  SvgAssets.chatBalance,
                  state.balance.messages.toString(),
                ),
                const Spacer(),
                buildBalanceInfo(
                  context,
                  SvgAssets.callBalance,
                  secToText(state.balance.phoneCallInSec),
                ),
                const Spacer(),
                buildBalanceInfo(
                  context,
                  SvgAssets.videoBalance,
                  secToText(state.balance.videoCallInSec),
                ),
              ],
            ),
          ],
        ),
      );
    });
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

  Widget buildBalanceInfo(
    BuildContext context,
    String svgImagePath,
    String text,
  ) {
    return Container(
      width: 105.w,
      height: 85.h,
      decoration: _getInnerBoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox.square(
            dimension: 18.w,
            child: SvgPicture.asset(svgImagePath),
          ),
          SizedBox(height: 8.h),
          ThemeTexts.black.bodyLarge(
            context: context,
            text: text,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }

  BoxDecoration _getInnerBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(StyleDimens.radiusMedium),
      border: Border.all(
        width: 1.w,
        color: const Color(0xffF9BAA7).withOpacity(0.4),
      ),
    );
  }

  BoxDecoration _getOuterBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xffFCDCD3).withOpacity(0.2),
          const Color(0xffFEEEE9).withOpacity(0.1),
          const Color(0xffFCDCD3).withOpacity(0.2),
        ],
        stops: const [0.0, 0.5, 1.0],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        tileMode: TileMode.repeated,
      ),
      borderRadius: BorderRadius.circular(StyleDimens.radiusMedium),
      border: Border.all(
        width: 1.w,
        color: const Color(0xffFCDCD3).withOpacity(0.2),
      ),
    );
  }
}
