import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider/screen_setting_box_left_repository.dart';
import '../providers/setting_provider/screen_setting_box_right_repository.dart';
import '../providers/setting_provider/screen_setting_header_provider.dart';
import '../providers/setting_provider/screen_setting_left_provider.dart';
import '../providers/setting_provider/screen_setting_right_provider.dart';
import 'ad_banner_screen.dart';

class NewAnimation extends StatefulWidget {
  final List<dynamic> ordersListLeft;
  final List<int> ordersListRight;
  final ScreenSettingsLeft settingsLeft;
  final ScreenSettingsHeader settingsHeader;
  final ScreenSettingsRight settingsRight;
  final ScreenSettingsBoxLeft settingsBoxLeft;
  final ScreenSettingsBoxRight settingsBoxRight;
  final int numberRight;

  // ── Реклама ──────────────────────────────────────────────────────────────────
 // final List<AdModel> ads;

  const NewAnimation({
    super.key,
    required this.numberRight,
    required this.ordersListLeft,
    required this.ordersListRight,
    required this.settingsLeft,
    required this.settingsHeader,
    required this.settingsRight,
    required this.settingsBoxLeft,
    required this.settingsBoxRight,
  //  this.ads = const [], // по умолчанию пусто
  });

  @override
  State<NewAnimation> createState() => _NewAnimationState();
}

class _NewAnimationState extends State<NewAnimation> {
  List<int> displayedOrders = [];
  List<int> previousList = [];
  bool isFirstRun = true;
  bool _isRemoving = false;

  late int sizewidth;
  late int sizeheight;
  late int sizeheightBig;
  late int sizewidthBig;
  late int countBox;
  late double sizeText;
  late double sizeTextBig;

  @override
  Widget build(BuildContext context) {
    final settingsHeader = context.watch<ScreenSettingsHeader>();

    sizewidth = (203 * 4) ~/ settingsHeader.sizeBox;
    sizeheight = (148 * 4) ~/ settingsHeader.sizeBox;
    sizeheightBig = (320 * 4) ~/ settingsHeader.sizeBox;
    sizewidthBig = (429 * 4) ~/ settingsHeader.sizeBox;
    sizeText = 84 * (sizewidth / 203);
    sizeTextBig = 148 * (sizewidthBig / 429);

    countBox = switch (settingsHeader.sizeBox) {
      3 => 12,
      4 => 20,
      5 => 30,
      _ => 4,
    };

    // Полоса рекламы
   // final adBanner = widget.ads.isNotEmpty
   //     ? AdBanner(
   //   ads: widget.ads,
   //   sizePercent: settingsHeader.adSizePercent,   // 0.0-1.0, например 0.2
   //   position: settingsHeader.adPosition,         // top/bottom/left/right
   // )
   //     : null;
   //
    final mainContent = Row(
      children: [
        _buildLeftColumn(),
        _buildRightColumn(),
      ],
    );

    // Собираем layout в зависимости от позиции рекламы
    return Scaffold(
      body: _buildLayout(
        mainContent: mainContent,
      //  banner: adBanner,
      //  position: settingsHeader.adPosition,
      ),
    );
  }

  // ── Layout с рекламной полосой ────────────────────────────────────────────────

  Widget _buildLayout({
    required Widget mainContent,
  //  required Widget? banner,
  //  required AdPosition position,
  }) {
  //  if (banner == null) return mainContent;
    return Column(
      children: [
        Expanded(child: mainContent),
    ],);
 //   switch (position) {
 //     case AdPosition.bottom:
 //       return Column(children: [
 //         Expanded(child: mainContent),
 //         banner,
 //       ]);
 //     case AdPosition.top:
 //       return Column(children: [
 //         banner,
 //         Expanded(child: mainContent),
 //       ]);
 //     case AdPosition.left:
 //       return Row(children: [
 //         banner,
 //         Expanded(child: mainContent),
 //       ]);
 //     case AdPosition.right:
 //       return Row(children: [
 //         Expanded(child: mainContent),
 //         banner,
 //       ]);
 //     default :Row(children: [
 //         Expanded(child: mainContent),
 //         banner,
 //       ]);
 //   }
  }

  // ── Левая колонка ─────────────────────────────────────────────────────────────

  Widget _buildLeftColumn() {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: HexColor(widget.settingsLeft.leftColumnColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, top: 56.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Заголовок
              Container(
                height: 83.h,
                constraints: BoxConstraints(minWidth: 328.w),
                color: HexColor(widget.settingsLeft.titleColorBox),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      widget.settingsLeft.textLeftTitle.toString(),
                      style: GoogleFonts.roboto(
                        fontStyle: FontStyle.normal,
                        fontSize: 56.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: HexColor(widget.settingsLeft.leftColorText),
                      ),
                    ),
                  ),
                ),
              ),
              // Список заказов
              Expanded(
                child: widget.ordersListLeft.isNotEmpty
                    ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Consumer<ScreenSettingsBoxLeft>(
                    builder: (context, settingsBox, _) {
                      final sorted = [...widget.ordersListLeft]
                        ..sort((a, b) => a.compareTo(b));
                      return Padding(
                        padding: EdgeInsets.only(top: 26.h),
                        child: Wrap(
                          direction: Axis.vertical,
                          children: List.generate(
                            sorted.length >= countBox ? countBox : sorted.length,
                                (i) => Padding(
                              padding: EdgeInsets.only(right: 23.h, top: 24.h),
                              child: _orderBox(
                                sorted[i].toString(),
                                sizewidth,
                                sizeheight,
                                widget.settingsBoxLeft.backgroundBoxColorLeft,
                                widget.settingsBoxLeft.textBoxColorLeft,
                                sizeText,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Правая колонка ────────────────────────────────────────────────────────────

  Widget _buildRightColumn() {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: HexColor(widget.settingsRight.rightColumnColor),
          image: widget.settingsHeader.selectedImage != null
              ? DecorationImage(
            image: FileImage(widget.settingsHeader.selectedImage!),
            alignment: widget.settingsRight.alignmentRight,
          )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, top: 56.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Заголовок
              Container(
                height: 83.h,
                constraints: BoxConstraints(minWidth: 271.w),
                color: HexColor(widget.settingsRight.rightColorTitleBox),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      widget.settingsRight.textRightTitle.toString(),
                      style: GoogleFonts.roboto(
                        fontStyle: FontStyle.normal,
                        fontSize: 56.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: HexColor(widget.settingsRight.rightColorText),
                      ),
                    ),
                  ),
                ),
              ),
              // Список заказов
              Expanded(
                child: widget.ordersListRight.isNotEmpty
                    ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Consumer<ScreenSettingsBoxLeft>(
                    builder: (context, settingsBox, _) {
                      final sorted = [...widget.ordersListRight]
                        ..sort((a, b) => b.compareTo(a));
                      return Padding(
                        padding: EdgeInsets.only(top: 26.h),
                        child: Stack(
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              children: List.generate(
                                sorted.length >= 20 ? 20 : sorted.length,
                                    (i) => Padding(
                                  padding: EdgeInsets.only(right: 23.w, top: 24.h),
                                  child: _orderBox(
                                    sorted[i].toString(),
                                    sizewidth,
                                    sizeheight,
                                    widget.settingsBoxRight.backgroundBoxColorRight,
                                    widget.settingsBoxRight.textBoxColorRight,
                                    sizeText,
                                  ),
                                ),
                              ),
                            ),
                            // Большой бокс для нового номера
                            if (displayedOrders.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.only(right: 23.w, top: 24.h),
                                child: _orderBox(
                                  displayedOrders[0].toString(),
                                  sizewidthBig,
                                  sizeheightBig,
                                  widget.settingsBoxRight.backgroundBoxColorRight,
                                  widget.settingsBoxRight.textBoxColorRight,
                                  sizeTextBig,
                                  borderRadius: 34,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Переиспользуемый бокс заказа ─────────────────────────────────────────────

  Widget _orderBox(
      String value,
      int width,
      int height,
      String bgColor,
      String textColor,
      double fontSize, {
        double borderRadius = 24,
      }) {
    return Container(
      alignment: Alignment.center,
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: HexColor(bgColor),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          value,
          maxLines: 1,
          style: GoogleFonts.roboto(
            fontSize: fontSize.sp,
            fontWeight: FontWeight.w400,
            color: HexColor(textColor),
          ),
        ),
      ),
    );
  }

  void _removeItemsWithDelay() {
    if (!mounted) return;
    if (displayedOrders.isEmpty) {
      _isRemoving = false;
      return;
    }
    _isRemoving = true;
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      setState(() {
        if (displayedOrders.isNotEmpty) displayedOrders.removeAt(0);
      });
      _removeItemsWithDelay();
    });
  }
}