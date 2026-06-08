import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rich_console/rich_console.dart';
import 'package:tv_aspeptare/screens/settings_screens/tv_text_input_dialog.dart';

import '../../pachetges/castom_picker_color.dart';
import '../../providers/setting_provider/screen_setting_box_left_repository.dart';
import '../../providers/setting_provider/screen_setting_left_provider.dart';
import 'tv_setting_row.dart';

// ── Список шрифтов ─────────────────────────────────────────────────────────────

const List<String> _fontOptions = [
  'Roboto',
  'Lato',
  'Oswald',
  'Montserrat',
  'Open Sans',
  'Raleway',
];

// ─────────────────────────────────────────────────────────────────────────────
// SettingLeftScreen
// ─────────────────────────────────────────────────────────────────────────────

class SettingLeftScreen extends StatefulWidget {
  final FocusNode focusNode;

  const SettingLeftScreen({Key? key, required this.focusNode})
    : super(key: key);

  @override
  State<SettingLeftScreen> createState() => _SettingLeftScreenState();
}

class _SettingLeftScreenState extends State<SettingLeftScreen> {
  // ── Секции ─────────────────────────────────────────────────────────────────
  // Секция 0: ScreenSettingsLeft  (8 строк: 0–7)
  // Секция 1: ScreenSettingsBoxLeft (10 строк: 8–17)
  static const int _rowCount = 18;

  int _focusedRow = 0;
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _rowKeys = List.generate(18, (_) => GlobalKey());

  // ── Lifecycle ──────────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (widget.focusNode.hasFocus) {
      setState(() => _focusedRow = 0);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    _scrollController.dispose();
    super.dispose();
  }

  // ── Скролл к строке ────────────────────────────────────────────────────────

  void _scrollToFocused() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctx = _rowKeys[_focusedRow].currentContext;
      if (ctx == null) return;
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        alignment: 0.2,
      );
    });
  }

  // ── Обработка клавиш ───────────────────────────────────────────────────────

  KeyEventResult _handleKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;

    if (key == LogicalKeyboardKey.escape ||
        key == LogicalKeyboardKey.goBack ||
        key == LogicalKeyboardKey.browserBack) {
      _returnToMenu();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowDown) {
      setState(() => _focusedRow = (_focusedRow + 1) % _rowCount);
      _scrollToFocused();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowUp) {
      setState(() => _focusedRow = (_focusedRow - 1 + _rowCount) % _rowCount);
      _scrollToFocused();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowRight) {
      _onRight();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowLeft) {
      _onLeft();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.select) {
      _onSelect();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  void _returnToMenu() {
    widget.focusNode.unfocus();
    FocusScope.of(context).focusInDirection(TraversalDirection.left);
  }

  // ── Действия ──────────────────────────────────────────────────────────────

  void _onRight() {
    final left = context.read<ScreenSettingsLeft>();
    final box = context.read<ScreenSettingsBoxLeft>();
    switch (_focusedRow) {
      // ScreenSettingsLeft
      case 0:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColumnColor),
          onChanged: (c) => left.updateLeftColumnColor(c),
        );
        break;
      case 1:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColorText),
          onChanged: (c) => left.updateLeftColorText(c),
        );
        break;
      case 2:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.titleColorBox),
          onChanged: (c) => left.updateTitleColorBox(c),
        );
        break;
      case 3:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColorBorder),
          onChanged: (c) => left.updateLeftColorBorder(c),
        );
        break;
      case 4:
        left.updateLeftSizeText((left.leftSizeText + 0.5).clamp(8.0, 40.0));
        break;
      case 5:
        left.updateLeftSizeBorder((left.leftSizeBorder + 0.5).clamp(0.0, 8.0));
        break;
      case 6:
        _nextFont(left.styleColumnLeft, left.updateStyleColumnLeft);
        break;
       case 7:  TVTextInputDialog.show(
         context,
         title: left.textLeftTitle,
         initialValue: left.textLeftTitle,
         onConfirm: (String value) {
           printRich(value, background: Colors.orange);
           left.updateTextLeftTitle(value);
           Navigator.of(context).pop();
         },
       );break;

      // ScreenSettingsBoxLeft
      case 8:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.backgroundBoxColorLeft),
          onChanged: (c) => box.updateBackgroundBoxColorLeft(c),
        );
        break;
      case 9:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.boxBorderColorLeft),
          onChanged: (c) => box.updateBoxBorderColorLeft(c),
        );
        break;
      case 10:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.textBoxColorLeft),
          onChanged: (c) => box.updateTextBoxColorLeft(c),
        );
        break;
      case 11:
        _nextFont(box.styleBoxLeft, box.updateStyleBoxLeft);
        break;
      case 12:
        box.updateSizeTextLeft((box.sizeTextLeft + 0.5).clamp(8.0, 40.0));
        break;
      case 13:
        box.updateRadiusBoxLeft((box.radiusBoxLeft + 0.5).clamp(0.0, 32.0));
        break;
      case 14:
        box.updateSizeBorderLeft((box.sizeBorderLeft + 0.5).clamp(0.0, 8.0));
        break;
      case 15:
        box.updateHeightBoxLeft((box.heightBoxLeft + 1.0).clamp(10.0, 200.0));
        break;
      case 16:
        box.updateWidthBoxLeft((box.widthBoxLeft + 1.0).clamp(10.0, 400.0));
        break;
      case 17:
        box.updateBorderBoxLeft(true);
        break;
    }
  }

  void _onLeft() {
    final left = context.read<ScreenSettingsLeft>();
    final box = context.read<ScreenSettingsBoxLeft>();
    switch (_focusedRow) {
      case 4:
        left.updateLeftSizeText((left.leftSizeText - 0.5).clamp(8.0, 40.0));
        break;
      case 5:
        box.updateSizeBorderLeft((left.leftSizeBorder - 0.5).clamp(0.0, 8.0));
        break;
      case 6:
        _prevFont(left.styleColumnLeft, left.updateStyleColumnLeft);
        break;
      case 11:
        _prevFont(box.styleBoxLeft, box.updateStyleBoxLeft);
        break;
      case 12:
        box.updateSizeTextLeft((box.sizeTextLeft - 0.5).clamp(8.0, 40.0));
        break;
      case 13:
        box.updateRadiusBoxLeft((box.radiusBoxLeft - 0.5).clamp(0.0, 32.0));
        break;
      case 14:
        box.updateSizeBorderLeft((box.sizeBorderLeft - 0.5).clamp(0.0, 8.0));
        break;
      case 15:
        box.updateHeightBoxLeft((box.heightBoxLeft - 1.0).clamp(10.0, 200.0));
        break;
      case 16:
        box.updateWidthBoxLeft((box.widthBoxLeft - 1.0).clamp(10.0, 400.0));
        break;
      case 17:
        box.updateBorderBoxLeft(false);
        break;
      // Цвета — открываем пикер только через ▶ или OK
    }
  }

  void _onSelect() {
    final left = context.read<ScreenSettingsLeft>();
    final box = context.read<ScreenSettingsBoxLeft>();
    switch (_focusedRow) {
      case 0:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColumnColor),
          onChanged: (c) => left.updateLeftColumnColor(c),
        );
        break;
      case 1:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColorText),
          onChanged: (c) => left.updateLeftColorText(c),
        );
        break;
      case 2:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.titleColorBox),
          onChanged: (c) => left.updateTitleColorBox(c),
        );
        break;
      case 3:
        _openColorPicker(
          context: context,
          colorInit: HexColor(left.leftColorBorder),
          onChanged: (c) => left.updateLeftColorBorder(c),
        );
        break;
      case 6:
        _nextFont(left.styleColumnLeft, left.updateStyleColumnLeft);
        break;
      case 7:
        TVTextInputDialog.show(
          context,
          title: left.textLeftTitle,
          initialValue: left.textLeftTitle,
          onConfirm: (String value) {
            printRich(value, background: Colors.orange);
            left.updateTextLeftTitle(value);
            Navigator.of(context).pop();
          },
        );
        break;
      case 8:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.backgroundBoxColorLeft),
          onChanged: (c) => box.updateBackgroundBoxColorLeft(c),
        );
        break;
      case 9:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.boxBorderColorLeft),
          onChanged: (c) => box.updateBoxBorderColorLeft(c),
        );
        break;
      case 10:
        _openColorPicker(
          context: context,
          colorInit: HexColor(box.textBoxColorLeft),
          onChanged: (c) => box.updateTextBoxColorLeft(c),
        );
        break;
      case 11:
        _nextFont(box.styleBoxLeft, box.updateStyleBoxLeft);
        break;
      case 17:
        box.updateBorderBoxLeft(!box.borderBoxLeft);
        break;
    }
  }

  // ── Шрифты ────────────────────────────────────────────────────────────────

  void _nextFont(String current, void Function(String) update) {
    final i = _fontOptions.indexOf(current);
    update(_fontOptions[(i + 1) % _fontOptions.length]);
  }

  void _prevFont(String current, void Function(String) update) {
    final i = _fontOptions.indexOf(current);
    update(_fontOptions[(i - 1 + _fontOptions.length) % _fontOptions.length]);
  }

  // ── ColorPicker диалог ────────────────────────────────────────────────────

  void _openColorPicker({
    required BuildContext context,
    required Color colorInit,
    required void Function(String) onChanged,
  }) {
    Color pickedColor = colorInit;

    printRich('selectedColor', foreground: pickedColor);
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              backgroundColor: Colors.blueGrey,
              content: SizedBox(
                width: 700,
                height: 400,
                child: CustomColorPicker(
                  initialColor: pickedColor,
                  onColorChanged: (Color color) {
                    setDialogState(() {
                      pickedColor = color;
                    });
                  },
                  onSaveChanged: (value) {
                    onChanged(pickedColor.toHex());
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  // ── TextInput диалог ──────────────────────────────────────────────────────

  void _openTextInput(String initial, void Function(String) onChanged) {
    final controller = TextEditingController(text: initial);
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1e1e1e),
        title: const Text(
          'Текст заголовка',
          style: TextStyle(color: Colors.white),
        ),
        content: TextField(
          controller: controller,
          autofocus: true,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4CAF50)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF81C784), width: 2),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена', style: TextStyle(color: Colors.grey)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4CAF50),
            ),
            onPressed: () {
              onChanged(controller.text);
              Navigator.of(context).pop();
            },
            child: const Text('OK', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ).then((_) {
      widget.focusNode.requestFocus();
      controller.dispose();
    });
  }

  // ── Build ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Consumer2<ScreenSettingsLeft, ScreenSettingsBoxLeft>(
      builder: (context, left, box, _) {
        return Focus(
          focusNode: widget.focusNode,
          onKeyEvent: _handleKey,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ═══════════════════════════════════════════════════════════
                // Секция: Колонка (ScreenSettingsLeft)
                // ═══════════════════════════════════════════════════════════
                _sectionHeader('Настройки колонки'),
                const SizedBox(height: 12),

                // Row 0: leftColumnColor
                KeyedSubtree(
                  key: _rowKeys[0],
                  child: TVSettingRow(
                    isFocused: _isFocused(0),
                    label: 'Цвет фона колонки',
                    icon: Icons.format_color_fill,
                    trailing: _colorDot(left.leftColumnColor),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 1: leftColorText
                KeyedSubtree(
                  key: _rowKeys[1],
                  child: TVSettingRow(
                    isFocused: _isFocused(1),
                    label: 'Цвет текста',
                    icon: Icons.format_color_text,
                    trailing: _colorDot(left.leftColorText),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 2: titleColorBox
                KeyedSubtree(
                  key: _rowKeys[2],
                  child: TVSettingRow(
                    isFocused: _isFocused(2),
                    label: 'Цвет заголовка бокса',
                    icon: Icons.title,
                    trailing: _colorDot(left.titleColorBox),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 3: leftColorBorder
                KeyedSubtree(
                  key: _rowKeys[3],
                  child: TVSettingRow(
                    isFocused: _isFocused(3),
                    label: 'Цвет бордера',
                    icon: Icons.border_color,
                    trailing: _colorDot(left.leftColorBorder),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 4: leftSizeText
                KeyedSubtree(
                  key: _rowKeys[4],
                  child: TVSettingRow(
                    isFocused: _isFocused(4),
                    label: 'Размер текста',
                    icon: Icons.text_fields,
                    trailing: Text(
                      '${left.leftSizeText.toStringAsFixed(1)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar((left.leftSizeText - 8) / (40 - 8)),
                    hint: '◀  ▶  изменить (8–40)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 5: leftSizeBorder
                KeyedSubtree(
                  key: _rowKeys[5],
                  child: TVSettingRow(
                    isFocused: _isFocused(5),
                    label: 'Толщина бордера',
                    icon: Icons.border_style,
                    trailing: Text(
                      '${left.leftSizeBorder.toStringAsFixed(1)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar(left.leftSizeBorder / 8),
                    hint: '◀  ▶  изменить (0–8)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 6: styleColumnLeft
                KeyedSubtree(
                  key: _rowKeys[6],
                  child: TVSettingRow(
                    isFocused: _isFocused(6),
                    label: 'Шрифт',
                    icon: Icons.font_download_outlined,
                    content: _fontChips(left.styleColumnLeft),
                    hint: '◀  ▶  / OK  для выбора',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 7: textLeftTitle
                KeyedSubtree(
                  key: _rowKeys[7],
                  child: TVSettingRow(
                    isFocused: _isFocused(7),
                    label: 'Текст заголовка',
                    icon: Icons.edit_outlined,
                    trailing: Text(
                      left.textLeftTitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    hint: 'OK  редактировать',
                  ),
                ),

                const SizedBox(height: 28),

                // ═══════════════════════════════════════════════════════════
                // Секция: Боксы (ScreenSettingsBoxLeft)
                // ═══════════════════════════════════════════════════════════
                _sectionHeader('Настройки боксов'),
                const SizedBox(height: 12),

                // Row 8: backgroundBoxColorLeft
                KeyedSubtree(
                  key: _rowKeys[8],
                  child: TVSettingRow(
                    isFocused: _isFocused(8),
                    label: 'Фон бокса',
                    icon: Icons.format_color_fill,
                    trailing: _colorDot(box.backgroundBoxColorLeft),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 9: boxBorderColorLeft
                KeyedSubtree(
                  key: _rowKeys[9],
                  child: TVSettingRow(
                    isFocused: _isFocused(9),
                    label: 'Цвет бордера бокса',
                    icon: Icons.border_color,
                    trailing: _colorDot(box.boxBorderColorLeft),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 10: textBoxColorLeft
                KeyedSubtree(
                  key: _rowKeys[10],
                  child: TVSettingRow(
                    isFocused: _isFocused(10),
                    label: 'Цвет текста бокса',
                    icon: Icons.format_color_text,
                    trailing: _colorDot(box.textBoxColorLeft),
                    hint: 'OK / ▶  выбрать цвет',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 11: styleBoxLeft
                KeyedSubtree(
                  key: _rowKeys[11],
                  child: TVSettingRow(
                    isFocused: _isFocused(11),
                    label: 'Шрифт бокса',
                    icon: Icons.font_download_outlined,
                    content: _fontChips(box.styleBoxLeft),
                    hint: '◀  ▶  / OK  для выбора',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 12: sizeTextLeft
                KeyedSubtree(
                  key: _rowKeys[12],
                  child: TVSettingRow(
                    isFocused: _isFocused(12),
                    label: 'Размер текста бокса',
                    icon: Icons.text_fields,
                    trailing: Text(
                      '${box.sizeTextLeft.toStringAsFixed(1)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar((box.sizeTextLeft - 8) / (40 - 8)),
                    hint: '◀  ▶  изменить (8–40)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 13: radiusBoxLeft
                KeyedSubtree(
                  key: _rowKeys[13],
                  child: TVSettingRow(
                    isFocused: _isFocused(13),
                    label: 'Радиус скругления',
                    icon: Icons.rounded_corner,
                    trailing: Text(
                      '${box.radiusBoxLeft.toStringAsFixed(1)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar(box.radiusBoxLeft / 32),
                    hint: '◀  ▶  изменить (0–32)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 14: sizeBorderLeft
                KeyedSubtree(
                  key: _rowKeys[14],
                  child: TVSettingRow(
                    isFocused: _isFocused(14),
                    label: 'Толщина бордера бокса',
                    icon: Icons.border_style,
                    trailing: Text(
                      '${box.sizeBorderLeft.toStringAsFixed(1)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar(box.sizeBorderLeft / 8),
                    hint: '◀  ▶  изменить (0–8)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 15: heightBoxLeft
                KeyedSubtree(
                  key: _rowKeys[15],
                  child: TVSettingRow(
                    isFocused: _isFocused(15),
                    label: 'Высота бокса',
                    icon: Icons.height,
                    trailing: Text(
                      '${box.heightBoxLeft.toStringAsFixed(0)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar(
                      (box.heightBoxLeft - 10) / (200 - 10),
                    ),
                    hint: '◀  ▶  изменить (10–200)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 16: widthBoxLeft
                KeyedSubtree(
                  key: _rowKeys[16],
                  child: TVSettingRow(
                    isFocused: _isFocused(16),
                    label: 'Ширина бокса',
                    icon: Icons.swap_horiz,
                    trailing: Text(
                      '${box.widthBoxLeft.toStringAsFixed(0)} px',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    content: _progressBar((box.widthBoxLeft - 10) / (400 - 10)),
                    hint: '◀  ▶  изменить (10–400)',
                  ),
                ),
                const SizedBox(height: 12),

                // Row 17: borderBoxLeft
                KeyedSubtree(
                  key: _rowKeys[17],
                  child: TVSettingRow(
                    isFocused: _isFocused(17),
                    label: 'Показывать бордер',
                    icon: Icons.border_all,
                    trailing: TVToggle(value: box.borderBoxLeft),
                    hint: 'OK / ◀▶  для переключения',
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }

  // ── Вспомогательные ───────────────────────────────────────────────────────

  bool _isFocused(int index) =>
      _focusedRow == index && widget.focusNode.hasFocus;

  Widget _sectionHeader(String title) => Padding(
    padding: const EdgeInsets.only(left: 4, bottom: 4),
    child: Text(
      title,
      style: const TextStyle(
        color: Color(0xFF4CAF50),
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
      ),
    ),
  );

  Widget _colorDot(String hex) => Container(
    width: 36,
    height: 36,
    decoration: BoxDecoration(
      color: HexColor(hex),
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white24, width: 2),
    ),
  );

  Widget _progressBar(double value) => ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: LinearProgressIndicator(
      value: value.clamp(0.0, 1.0),
      backgroundColor: const Color(0xFF333333),
      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4CAF50)),
      minHeight: 8,
    ),
  );

  Widget _fontChips(String selected) => Wrap(
    spacing: 8,
    runSpacing: 8,
    children: _fontOptions.map((f) {
      final isSelected = f == selected;
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4CAF50) : const Color(0xFF2a2a2a),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF81C784)
                : const Color(0xFF444444),
          ),
        ),
        child: Text(
          f,
          style: TextStyle(
            fontFamily: f,
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
          ),
        ),
      );
    }).toList(),
  );
}
