import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/app/init/exports.dart';
import 'package:digitalkanect/src/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InitManagerCubit.shared.run();
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              height: 150.h,
              child: SvgPicture.asset(SvgAssets.logo),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: ThemeTexts.primary.titleMedium(
                context: context,
                text: context.l10n.appName,
              ),
            ),
            BlocBuilder<InitManagerCubit, InitState>(
              bloc: InitManagerCubit.shared,
              builder: (context, state) {
                if (state.phase == InitPhase.processing) {
                  return ThemeTexts.onBackground.titleMedium(
                    context: context,
                    text: context.l10n.appInitializing,
                  );
                }
                return ThemeStadiumButton.primary(
                  context: context,
                  onPressed: () {
                    DashboardScreen.start(context);
                  },
                  child: ThemeTexts.onPrimary.labelMedium(
                    context: context,
                    text: context.l10n.next,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
