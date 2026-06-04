import 'package:flutter/material.dart';

class SettingRightScreen extends StatefulWidget {
  final FocusNode focusNode;
  const SettingRightScreen({super.key, required this.focusNode});

  @override
  State<SettingRightScreen> createState() => _SettingRightScreenState();
}

class _SettingRightScreenState extends State<SettingRightScreen> {
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

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: isFocused ? Colors.blue : Colors.grey, // Пример: меняй цвет при фокусе
        child: Text('Right - Focused: $isFocused'),
      ),
    );
  }
}
