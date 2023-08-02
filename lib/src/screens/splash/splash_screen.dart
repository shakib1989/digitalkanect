import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/app/init/exports.dart';
import 'package:digitalkanect/src/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController addToCartPopUpAnimationController;
  final logo = SizedBox(
    width: 100.w,
    height: 150.h,
    child: SvgPicture.asset(SvgAssets.logo),
  );

  @override
  void initState() {
    super.initState();
    addToCartPopUpAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));

    InitManagerCubit.shared.run();
    addToCartPopUpAnimationController.forward();
  }

  @override
  void dispose() {
    addToCartPopUpAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<InitManagerCubit, InitState>(
      bloc: InitManagerCubit.shared,
      listenWhen: (prev, cur) {
        return cur.phase == InitPhase.completed;
      },
      listener: (context, state) async {
        if (state.phase == InitPhase.completed) {
          do {
            await Future.delayed(const Duration(milliseconds: 500));
          } while (addToCartPopUpAnimationController.isAnimating);

          DashboardScreen.start(context);
        }
      },
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: _buildAnimatedContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        logo,
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: ThemeTexts.primary.titleMedium(
            context: context,
            text: context.l10n.appName,
          ),
        ),
        ThemeTexts.onBackground.bodyMedium(
          context: context,
          text: context.l10n.appInitializing,
        ),
        SizedBox(height: 100.h),
      ],
    );
  }

  Widget _buildAnimatedContent() {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(addToCartPopUpAnimationController),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Wrap(
          children: [
            _buildContent(),
          ],
        ),
      ),
    );
  }
}
