import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/src/screens/dashboard/bloc/dashboard_screen_cubit.dart';
import 'package:digitalkanect/src/screens/dashboard/chat/chat_section.dart';
import 'package:digitalkanect/src/screens/dashboard/profile/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/styles.dart';

import 'components/dashboard_background.dart';
import 'components/dashboard_bottom_navigation.dart';
import 'favorite/favorite_section.dart';
import 'home/home_section.dart';

class DashboardScreen extends StatefulWidget {
  static Future start(BuildContext context) async {
    const page = DashboardScreen();
    final route = MaterialPageRoute(builder: (context) => page);
    Navigator.of(context, rootNavigator: true).pushReplacement(route);
  }

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _sections = const <Widget>[
    HomeSection(),
    FavoriteSection(),
    ChatSection(),
    ProfileSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return DashboardScreenCubit();
      },
      child: Screen(
        allowBack: false,
        background: const DashboardBackground(),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 42.h,
                  width: 34.w,
                  margin: EdgeInsets.all(24.w),
                  child: SvgPicture.asset(SvgAssets.logo),
                ),
              ],
            ),
            Expanded(
              child: BlocBuilder<DashboardScreenCubit, DashboardScreenState>(
                buildWhen: (prev, current) {
                  return prev.selectedIndex != current.selectedIndex;
                },
                builder: (context, state) {
                  return _sections[state.selectedIndex];
                },
              ),
            ),
            const DashboardBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
