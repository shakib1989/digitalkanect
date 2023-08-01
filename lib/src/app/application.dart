import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/app/init/exports.dart';
import 'package:digitalkanect/src/blocs/balance/balance_cubit.dart';
import 'package:digitalkanect/src/blocs/matched_user_list/matched_user_list_cubit.dart';
import 'package:digitalkanect/src/blocs/subscription_plan_list/subscription_plan_list_cubit.dart';
import 'package:digitalkanect/src/screens/splash/splash_screen.dart';
import 'package:digitalkanect/src/utils/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styles/utils/snack_bar_utils.dart';

import '../../theme/light_theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {

          return InitManagerCubit.shared;
        }),
        BlocProvider(create: (_) => BalanceCubit()),
        BlocProvider(create: (_) => MatchedUserListCubit()),
        BlocProvider(create: (_) => SubscriptionPlanListCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            scaffoldMessengerKey: SnackBarUtils.key,
            navigatorKey: ContextHolder.navigatorKey,
            theme: LightTheme().data(),
            //theme: FlexThemeData.light(scheme: FlexScheme.vesuviusBurn),
            //darkTheme: DarkTheme().data(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: child,
          );
        },
        child: const SplashScreen(),
      ),
    );
  }
}
