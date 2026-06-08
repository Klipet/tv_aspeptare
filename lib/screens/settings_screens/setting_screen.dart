import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rich_console/printRich.dart';
import 'package:tv_aspeptare/screens/settings_screens/setting_left_screen.dart';

import 'setting_header_screen.dart';
import 'setting_right_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;
  late List<FocusNode> _menuFocusNodes;
  late FocusNode _headerFocusNode;
  late FocusNode _rightScreenFocusNode;
  late FocusNode _leftScreenFocusNode;

  final List<SettingItem> _settings = [
    SettingItem(label: 'Screen Header', icon: Icons.text_fields, description: 'Настройка заголовка экрана'),
    SettingItem(label: 'Screen Right', icon: Icons.settings_remote, description: 'Настройка правой части экрана'),
    SettingItem(label: 'Screen Left', icon: Icons.settings_remote, description: 'Настройка левой части экрана'),
  ];

  @override
  void initState() {
    super.initState();
    _menuFocusNodes = List.generate(_settings.length, (i) => FocusNode());
    _headerFocusNode = FocusNode();
    _rightScreenFocusNode = FocusNode();
    _leftScreenFocusNode = FocusNode();
    _menuFocusNodes[0].requestFocus();
  }

  @override
  void dispose() {
    for (var node in _menuFocusNodes) node.dispose();
    _headerFocusNode.dispose();
    _rightScreenFocusNode.dispose();
    _leftScreenFocusNode.dispose();
    super.dispose();
  }

  // ИСПРАВЛЕНО: геттер вместо метода без параметров с именем как у поля
  FocusNode get _contentFocusNode {
    switch (_selectedIndex) {
      case 0: return _headerFocusNode;
      case 1: return _rightScreenFocusNode;
      case 2: return _leftScreenFocusNode;
      default: return _headerFocusNode;
    }
  }

  KeyEventResult _handleMenuNavigation(FocusNode focus, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;

    if (key == LogicalKeyboardKey.arrowDown) {
      setState(() {
        _selectedIndex = (_selectedIndex + 1) % _settings.length;
        _menuFocusNodes[_selectedIndex].requestFocus();
      });
    } else if (key == LogicalKeyboardKey.arrowUp) {
      setState(() {
        _selectedIndex = (_selectedIndex - 1 + _settings.length) % _settings.length;
        _menuFocusNodes[_selectedIndex].requestFocus();
      });
    } else if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.arrowRight) {
      // Переходим в правую панель
      _contentFocusNode.requestFocus();
    } else {
      return KeyEventResult.ignored;
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      body: Row(
        children: [
          // Левое меню
          Container(
            width: 300,
            color: const Color(0xFF0f0f0f),
            child: ListView.builder(
              itemCount: _settings.length,
              itemBuilder: (context, index) {
                return Focus(
                  focusNode: _menuFocusNodes[index],
                  onKeyEvent: _handleMenuNavigation,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? const Color(0xFF4CAF50)
                          : const Color(0xFF2a2a2a),
                      borderRadius: BorderRadius.circular(12),
                      border: _selectedIndex == index
                          ? Border.all(color: const Color(0xFF81C784), width: 3)
                          : Border.all(color: Colors.transparent, width: 3),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          _settings[index].icon,
                          color: _selectedIndex == index ? Colors.white : Colors.grey,
                          size: 28,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            _settings[index].label,
                            style: TextStyle(
                              color: _selectedIndex == index ? Colors.white : Colors.grey,
                              fontSize: 18,
                              fontWeight: _selectedIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Правая часть
          Expanded(child: SingleChildScrollView(child: _buildSettingsScreen()),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsScreen() {
    switch (_selectedIndex) {
      case 0:
        return SettingSliderHeader(focusNode: _headerFocusNode, label: 'Header');
      case 1:
        return SettingRightScreen(focusNode: _rightScreenFocusNode);
      case 2:
        return SettingLeftScreen(focusNode: _leftScreenFocusNode);
      default:
        return const SizedBox();
    }
  }
}

class SettingItem {
  final String label;
  final IconData icon;
  final String description;

  SettingItem({required this.label, required this.icon, required this.description});
}




