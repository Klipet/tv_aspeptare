import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rich_console/rich_console.dart';
import 'package:tv_aspeptare/providers/setting_provider/screen_setting_box_right_repository.dart';
import 'package:tv_aspeptare/providers/setting_provider/screen_setting_right_provider.dart';
import 'package:tv_aspeptare/screens/settings_screens/setting_left_screen.dart';

import '../../providers/setting_provider/screen_setting_box_left_repository.dart';
import '../../providers/setting_provider/screen_setting_header_provider.dart';
import '../../providers/setting_provider/screen_setting_left_provider.dart';
import 'setting_header_screen.dart';
import 'setting_right_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  final headerFocus = FocusNode();
  final leftFocus = FocusNode();
  final rightFocus = FocusNode();

  @override
  void initState() {
    super.initState();

    headerFocus.addListener(_onFocusChange);
    leftFocus.addListener(_onFocusChange);
    rightFocus.addListener(_onFocusChange);
    printRich(headerFocus, foreground: Colors.orange);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(headerFocus);
    });
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  void dispose() {
    headerFocus.removeListener(_onFocusChange);
    leftFocus.removeListener(_onFocusChange);
    rightFocus.removeListener(_onFocusChange);
    headerFocus.dispose();
    leftFocus.dispose();
    rightFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Scaffold(
        body: Column(
          children: [
            Focus(
              focusNode: headerFocus,
              onKeyEvent: _onKeyEvent,
              child: SizedBox(
                height: 120,
                child: SettingHeaderScreen(
                  focusNode: headerFocus, // ✓ Передай FocusNode
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Focus(
                      focusNode: leftFocus,
                      onKeyEvent: _onKeyEvent,
                      child: SettingLeftScreen(
                        focusNode: leftFocus, // ✓ Передай FocusNode
                      ),
                    ),
                  ),
                  Expanded(
                    child: Focus(
                      focusNode: rightFocus,
                      onKeyEvent: _onKeyEvent,
                      child: SettingRightScreen(
                        focusNode: rightFocus, // ✓ Передай FocusNode
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  KeyEventResult _onKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;

    // HEADER
    if (node == headerFocus) {
      if (key == LogicalKeyboardKey.arrowDown) {
        leftFocus.requestFocus();
        return KeyEventResult.handled;
      }
    }

    // LEFT
    if (node == leftFocus) {
      if (key == LogicalKeyboardKey.arrowRight) {
        rightFocus.requestFocus();
        return KeyEventResult.handled;
      }

      if (key == LogicalKeyboardKey.arrowUp) {
        headerFocus.requestFocus();
        return KeyEventResult.handled;
      }
    }

    // RIGHT
    if (node == rightFocus) {
      if (key == LogicalKeyboardKey.arrowLeft) {
        leftFocus.requestFocus();
        return KeyEventResult.handled;
      }

      if (key == LogicalKeyboardKey.arrowUp) {
        headerFocus.requestFocus();
        return KeyEventResult.handled;
      }
    }

    // ENTER / OK (общая логика)
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter) {
      _handleCurrent(node);
      return KeyEventResult.handled;
    }
    printRich(headerFocus.hasFocus.toString(), foreground: Colors.orange);

    return KeyEventResult.ignored;
  }

  bool _handleCurrent(FocusNode node) {
    if (node == headerFocus) {
      print("HEADER ACTION");
      return true;
    } else if (node == leftFocus) {
      print("LEFT ACTION");
      return true;
    } else if (node == rightFocus) {
      print("RIGHT ACTION");
      return true;
    }else{
     return false;
    }
  }
}
