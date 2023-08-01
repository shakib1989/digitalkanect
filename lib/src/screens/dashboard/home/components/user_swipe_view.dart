import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:digitalkanect/assets/images/image_assets.dart';
import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/blocs/matched_user_list/matched_user_list_cubit.dart';
import 'package:digitalkanect/src/constants/theme_colors.dart';
import 'package:digitalkanect/src/widgets/loading.dart';
import 'package:digitalkanect/src/widgets/snack_bars/exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styles/constants/app_colors.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:dating_sdk/dating_sdk.dart';

import 'matched_user_view.dart';

class UserSwipeView extends StatefulWidget {
  final List<MatchedUserModel> list;
  const UserSwipeView({
    super.key,
    required this.list,
  });

  @override
  State<UserSwipeView> createState() => _UserSwipeViewState();
}

class _UserSwipeViewState extends State<UserSwipeView> {
  final CardSwiperController controller = CardSwiperController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchedUserListCubit, MatchedUserListState>(
      builder: (context, state) {
        if (state.phase != MatchedUserListPhase.completed) {
          return Text(state.phase.toString());
        }

        if (state.list.isEmpty) {
          return Text('No Card Left');
        }

        return CardSwiper(
          controller: controller,
          cardsCount: state.list.length,
          padding: EdgeInsets.zero,
          onSwipe: (
            int previousIndex,
            int? currentIndex,
            CardSwiperDirection direction,
          ) {
            if (direction == CardSwiperDirection.top ||
                direction == CardSwiperDirection.right) {
              SnackBarUtils.showSnackBar(
                  SuccessTextSnackBar(message: 'Liked Profile'));
            } else if (direction == CardSwiperDirection.bottom ||
                direction == CardSwiperDirection.left) {
              SnackBarUtils.showSnackBar(
                  SuccessTextSnackBar(message: 'Disliked Profile'));
            }
            return true;
          },
          onUndo: _onUndo,
          numberOfCardsDisplayed: state.list.length < 2 ? state.list.length : 2,
          backCardOffset: const Offset(0, 0),
          cardBuilder: (context, index, horizontalThresholdPercentage,
                  verticalThresholdPercentage) =>
              MatchedUserView(data: state.list[index]),
        );
      },
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undo from the ${direction.name}',
    );
    return true;
  }
}
