import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/constants/style_dimens.dart';

import '../bloc/dashboard_screen_cubit.dart';

class DashboardBottomNavigation extends StatelessWidget {
  const DashboardBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardScreenCubit, DashboardScreenState>(
      buildWhen: (prev, current) {
        return prev.selectedIndex != current.selectedIndex;
      },
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.selectedIndex,
          elevation: 0.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: StyleDimens.bodyMedium,
          unselectedFontSize: StyleDimens.bodyMedium,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          selectedLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.primary,
          ),
          unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.secondary,
          ),
          type: BottomNavigationBarType.fixed,
          items: _getNavigationItems(context, state.selectedIndex),
          onTap: (int index) {
            context.read<DashboardScreenCubit>().setSelectedIndex(index);
          },
        );
      },
    );
  }

  List<BottomNavigationBarItem> _getNavigationItems(
    BuildContext context,
    int selectedIndex,
  ) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: _getImage(SvgAssets.icHome),
        activeIcon: _getImage(SvgAssets.icHomeSelected),
        label: context.l10n.home,
      ),
      BottomNavigationBarItem(
        icon: _getImage(SvgAssets.icFavorite),
        activeIcon: _getImage(SvgAssets.icFavoriteSelected),
        label: context.l10n.favorite,
      ),
      BottomNavigationBarItem(
        icon: _getImage(SvgAssets.icChat),
        activeIcon: _getImage(SvgAssets.icChatSelected),
        label: context.l10n.chat,
      ),
      BottomNavigationBarItem(
        icon: _getImage(SvgAssets.icProfile),
        activeIcon: _getImage(SvgAssets.icProfileSelected),
        label: context.l10n.profile,
      ),
    ];
  }

  SvgPicture _getImage(String svgImagePath) {
    return SvgPicture.asset(svgImagePath);
  }
}
