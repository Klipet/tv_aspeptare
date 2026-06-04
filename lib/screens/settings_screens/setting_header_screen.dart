import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/setting_provider/screen_setting_header_provider.dart';

class SettingHeaderScreen extends StatefulWidget {
  final FocusNode focusNode;

  const SettingHeaderScreen({super.key, required this.focusNode});

  @override
  State<SettingHeaderScreen> createState() => _SettingHeaderScreenState();
}

class _SettingHeaderScreenState extends State<SettingHeaderScreen> {

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {}); // Перестраиваем когда меняется фокус
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isFocused = widget.focusNode.hasFocus;

    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: isFocused ? Colors.blue : Colors.grey, // Пример: меняй цвет при фокусе
      child: Text('Header - Focused: $isFocused'),
    );
  }
}
