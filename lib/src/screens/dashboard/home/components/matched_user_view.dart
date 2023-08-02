import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:digitalkanect/assets/images/image_assets.dart';
import 'package:digitalkanect/assets/images/svg_assets.dart';
import 'package:digitalkanect/l10n/l10n.dart';
import 'package:digitalkanect/src/constants/theme_colors.dart';
import 'package:digitalkanect/src/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

class MatchedUserView extends StatelessWidget {
  final MatchedUserModel data;
  final EdgeInsets margin;

  const MatchedUserView({
    super.key,
    required this.data,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(StyleDimens.radiusLarge),
      ),
      child: _buildContent(context),
    );
  }

  Widget _buildLeftArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        ThemeTexts.white.headlineSmall(
          context: context,
          text: data.name,
          fontWeight: FontWeight.w600,
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.h, bottom: 33.h),
          child: _buildOnlineOffLine(context),
        ),
      ],
    );
  }

  Widget _buildRightArea(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          width: 40.w,
          height: 40.w,
          margin: EdgeInsets.only(top: 25.h),
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
          child: data.favorite
              ? SvgPicture.asset(SvgAssets.heartSelected)
              : SvgPicture.asset(SvgAssets.heart),
        ),
        Container(
          width: 40.w,
          height: 40.w,
          margin: EdgeInsets.only(top: 25.h, bottom: 23.h),
          padding: EdgeInsets.all(6.w),
          child: SvgPicture.asset(
            SvgAssets.chat,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }

  Widget _buildOnlineOffLine(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.w,
          height: 10.w,
          margin: EdgeInsets.only(right: 4.w),
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
            color: ThemeColors.offline,
            shape: BoxShape.circle,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: data.online ? ThemeColors.online : ThemeColors.offline,
              shape: BoxShape.circle,
            ),
          ),
        ),
        ThemeTexts.white.bodyMedium(
          context: context,
          text: data.online ? context.l10n.online : context.l10n.offline,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: data.imageUrl,
      progressIndicatorBuilder: (context, url, downloadProgress) => Loading(),
      errorWidget: (_, __, ___) => Image.asset(ImageAssets.noImageFound),
      imageBuilder: (context, provider){
        return _buildContainer(context, provider);
      },
    );
  }

  Widget _buildContainer(BuildContext context, ImageProvider<Object> provider) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(StyleDimens.radiusLarge),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: provider,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: _buildLeftArea(context)),
          _buildRightArea(context),
        ],
      ),
    );
  }
}
