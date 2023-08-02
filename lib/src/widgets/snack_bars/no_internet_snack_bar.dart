import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/utils/context_holder.dart';
import 'package:flutter/material.dart';

class NoInternetSnackBar extends SnackBar {
  NoInternetSnackBar({
    super.key,
  }) : super(
          duration: const Duration(seconds: 2),
          backgroundColor:
              Theme.of(ContextHolder.currentContext).colorScheme.error,
          content: Text(ContextHolder.currentContext.l10n.turnOnInternet),
        );
}
