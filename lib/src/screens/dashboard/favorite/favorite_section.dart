import 'package:flutter/material.dart';
import 'package:styles/styles.dart';

class FavoriteSection extends StatefulWidget {
  const FavoriteSection({super.key});

  @override
  State<FavoriteSection> createState() => _FavoriteSectionState();
}

class _FavoriteSectionState extends State<FavoriteSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ThemeTexts.primary.headlineSmall(
              context: context,
              text: 'Favorite Coming Soon'
          ),
        ],
      ),
    );
  }
}
