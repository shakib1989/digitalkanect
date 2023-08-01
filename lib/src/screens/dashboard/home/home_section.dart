import 'package:dating_sdk/domain/models/models.dart';
import 'package:digitalkanect/src/blocs/matched_user_list/matched_user_list_cubit.dart';
import 'package:digitalkanect/src/widgets/snack_bars/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styles/styles.dart';

import 'components/user_swipe_view.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  final list = <MatchedUserModel>[];

  @override
  void initState() {
    super.initState();
    final cubit = context.read<MatchedUserListCubit>();
    if (cubit.state.list.isEmpty) {
      cubit.loadUsers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocListener<MatchedUserListCubit, MatchedUserListState>(
        listener: (context, state) {
          if (state.phase == MatchedUserListPhase.noInternet) {
            SnackBarUtils.showSnackBar(NoInternetSnackBar());
            context.read<MatchedUserListCubit>().reset();
          } else if (state.phase == MatchedUserListPhase.error) {
            SnackBarUtils.showSnackBar(
              ErrorTextSnackBar(
                message: state.failure.message,
              ),
            );
            context.read<MatchedUserListCubit>().reset();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UserSwipeView(list: list),
        ),
      ),
    );
  }
}
