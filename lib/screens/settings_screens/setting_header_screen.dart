import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sound_library/sound_library.dart';

import '../../providers/setting_provider/screen_setting_header_provider.dart';
import 'tv_setting_row.dart';

class SettingSliderHeader extends StatefulWidget {
  final FocusNode focusNode;
  final String label;

  const SettingSliderHeader({
    Key? key,
    required this.focusNode,
    required this.label,
  }) : super(key: key);

  @override
  State<SettingSliderHeader> createState() => _SettingSliderHeaderState();
}

class _SettingSliderHeaderState extends State<SettingSliderHeader> {
  int _focusedRow = 0;
  static const int _rowCount = 6; // строк с настройками (без preview)

  final ScrollController _scrollController = ScrollController();

  // Ключ для preview (отдельный) + по одному на каждую строку настроек
  final GlobalKey _previewKey = GlobalKey();
  final List<GlobalKey> _rowKeys = List.generate(6, (_) => GlobalKey());

  @override
  void initState() {
    super.initState();
    // Слушаем focusNode — при получении фокуса сбрасываем на 0 и скроллим вверх
    widget.focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (widget.focusNode.hasFocus) {
      setState(() => _focusedRow = 0);
      // Прокручиваем к первой строке сразу после построения
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

  KeyEventResult _handleKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;

    // Escape / Back / AndroidBack — возврат в меню
    if (key == LogicalKeyboardKey.backquote ||
        key == LogicalKeyboardKey.goBack ||
        key == LogicalKeyboardKey.browserBack) {
      _returnToMenu();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowDown) {
      setState(() => _focusedRow = (_focusedRow + 1) % _rowCount);
      _scrollToFocused();
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.arrowUp) {
      setState(() => _focusedRow = (_focusedRow - 1 + _rowCount) % _rowCount);
      _scrollToFocused();
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.arrowRight) {
      _onRight(context.read<ScreenSettingsHeader>());
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.arrowLeft) {
      _onLeft(context.read<ScreenSettingsHeader>());
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.select) {
      _onSelect(context.read<ScreenSettingsHeader>());
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  /// Передаёт фокус обратно в меню
  void _returnToMenu() {
    widget.focusNode.unfocus();
    FocusScope.of(context).focusInDirection(TraversalDirection.left);
  }

  void _onRight(ScreenSettingsHeader p) {
    switch (_focusedRow) {
      case 0: p.updateDeleteHours((p.deleteHours + 1).clamp(1, 24)); break;
      case 1: p.updateSizeBox((p.sizeBox + 1).clamp(1, 10)); break;
      case 2: p.updateSoundsActive(true); break;
      case 3: p.updateShowVideoPlayer(true); break;
      case 4:
        final next = (p.sounds.index + 1) % Sounds.values.length;
        p.updateSounds(Sounds.values[next]);
        break;
    // case 5: selectedImage — только через OK
    }
  }

  void _onLeft(ScreenSettingsHeader p) {
    switch (_focusedRow) {
      case 0: p.updateDeleteHours((p.deleteHours - 1).clamp(1, 24)); break;
      case 1: p.updateSizeBox((p.sizeBox - 1).clamp(1, 10)); break;
      case 2: p.updateSoundsActive(false); break;
      case 3: p.updateShowVideoPlayer(false); break;
      case 4:
        final prev = (p.sounds.index - 1 + Sounds.values.length) % Sounds.values.length;
        p.updateSounds(Sounds.values[prev]);
        break;
    }
  }

  void _onSelect(ScreenSettingsHeader p) {
    switch (_focusedRow) {
      case 2: p.updateSoundsActive(!p.soundActive); break;
      case 3: p.updateShowVideoPlayer(!p.videoPlayer); break;
      case 4:
        final next = (p.sounds.index + 1) % Sounds.values.length;
        p.updateSounds(Sounds.values[next]);
        break;
      case 5: _pickImage(p); break;
    }
  }

  Future<void> _pickImage(ScreenSettingsHeader p) async {
    // Подключи image_picker в pubspec.yaml и раскомментируй:
    // final picker = ImagePicker();
    // final picked = await picker.pickImage(source: ImageSource.gallery);
    // if (picked != null) await p.updateSelectedImage(File(picked.path));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenSettingsHeader>(
      builder: (context, provider, _) {
        return Focus(
          focusNode: widget.focusNode,
          onKeyEvent: _handleKey,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ── Row 0: deleteHours ──────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[0],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 0 && widget.focusNode.hasFocus,
                    label: 'Удалять через',
                    icon: Icons.timer_outlined,
                    trailing: Text('${provider.deleteHours} ч',
                        style: const TextStyle(color: Colors.white70, fontSize: 16)),
                    content: _progressBar((provider.deleteHours - 1) / (24 - 1)),
                    hint: '◀  ▶  изменить (1–24 ч)',
                  ),
                ),
                const SizedBox(height: 16),

                // ── Row 1: sizeBox ──────────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[1],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 1 && widget.focusNode.hasFocus,
                    label: 'Размер блока',
                    icon: Icons.crop_square,
                    trailing: Text('${provider.sizeBox}',
                        style: const TextStyle(color: Colors.white70, fontSize: 16)),
                    content: _progressBar((provider.sizeBox - 1) / (10 - 1)),
                    hint: '◀  ▶  изменить (1–5)',
                  ),
                ),
                const SizedBox(height: 16),

                // ── Row 2: soundActive ──────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[2],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 2 && widget.focusNode.hasFocus,
                    label: 'Звук',
                    icon: Icons.volume_up_outlined,
                    trailing: TVToggle(value: provider.soundActive),
                    hint: 'OK / ◀▶  для переключения',
                  ),
                ),
                const SizedBox(height: 16),

                // ── Row 3: videoPlayer ──────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[3],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 3 && widget.focusNode.hasFocus,
                    label: 'Видеоплеер',
                    icon: Icons.play_circle_outline,
                    trailing: TVToggle(value: provider.videoPlayer),
                    hint: 'OK / ◀▶  для переключения',
                  ),
                ),
                const SizedBox(height: 16),

                // ── Row 4: sounds ───────────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[4],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 4 && widget.focusNode.hasFocus,
                    label: 'Звуковой эффект',
                    icon: Icons.music_note_outlined,
                    content: _soundChips(provider.sounds),
                    hint: '◀  ▶  / OK  для выбора',
                  ),
                ),
                const SizedBox(height: 16),

                // ── Row 5: selectedImage ────────────────────────────────────
                KeyedSubtree(
                  key: _rowKeys[5],
                  child: TVSettingRow(
                    isFocused: _focusedRow == 5 && widget.focusNode.hasFocus,
                    label: 'Изображение',
                    icon: Icons.image_outlined,
                    trailing: provider.selectedImage != null
                        ? ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.file(
                        provider.selectedImage!,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    )
                        : const Icon(Icons.add_photo_alternate_outlined,
                        color: Colors.grey, size: 28),
                    hint: 'OK  выбрать из галереи',
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }

  Widget _progressBar(double value) => ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: LinearProgressIndicator(
      value: value.clamp(0.0, 1.0),
      backgroundColor: const Color(0xFF333333),
      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4CAF50)),
      minHeight: 8,
    ),
  );

  Widget _soundChips(Sounds selected) => Wrap(
    spacing: 8,
    runSpacing: 8,
    children: Sounds.values.map((s) {
      final isSelected = s == selected;
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4CAF50) : const Color(0xFF2a2a2a),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? const Color(0xFF81C784) : const Color(0xFF444444),
          ),
        ),
        child: Text(
          s.name,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
          ),
        ),
      );
    }).toList(),
  );
}