import 'package:dating_sdk/dating_sdk.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/blocs/subscription_plan_list/subscription_plan_list_cubit.dart';
import 'package:digitalkanect/src/widgets/selected_subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styles/constants/exports.dart';
import 'package:styles/styles.dart';

class SubscriptionPlanSheet extends StatefulWidget {
  const SubscriptionPlanSheet({super.key});

  @override
  State<SubscriptionPlanSheet> createState() => _SubscriptionPlanSheetState();
}

class _SubscriptionPlanSheetState extends State<SubscriptionPlanSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<SubscriptionPlanListCubit, SubscriptionPlanListState>(
            builder: (context, state) {
          final data = <Widget>[];
          for (int index = 0; index < state.list.length; index++) {
            data.add(_buildAmountArea(
                state.list[index], index, state.selectedIndex));
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Wrap(
              children: data,
            ),
          );
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const SelectedSubscription(),
        ),
      ],
    );
  }

  Widget _buildAmountArea(
      SubscriptionPlanModel data, int index, int selectedIndex) {
    bool selected = index == selectedIndex;
    var style = Theme.of(context).textTheme.labelSmall;
    style = style?.copyWith(
      fontWeight: FontWeight.w400,
      color: selected ? Colors.white : const Color(0xff666666),
    );

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

    return GestureDetector(
      onTap: () {
        context.read<SubscriptionPlanListCubit>().setSelected(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 8.w, bottom: 16.h),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color:
              selected ? Theme.of(context).colorScheme.primary : Colors.white,
          borderRadius: BorderRadius.circular(StyleDimens.radiusMedium),
          border: Border.all(color: const Color(0xffe5e5e5)),
        ),
        child: Text(amountString, style: style),
      ),
    );
  }
}
