import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TVTextInputDialog extends StatefulWidget {
  final String title;
  final String initialValue;
  final void Function(String) onConfirm;

  const TVTextInputDialog({
    Key? key,
    required this.title,
    required this.initialValue,
    required this.onConfirm,
  }) : super(key: key);

  @override
  State<TVTextInputDialog> createState() => _TVTextInputDialogState();

  static Future<void> show(
      BuildContext context, {
        required String title,
        required String initialValue,
        required void Function(String) onConfirm,
      }) {
    return showDialog(
      context: context,
      builder: (_) => TVTextInputDialog(
        title: title,
        initialValue: initialValue,
        onConfirm: onConfirm,
      ),
    );
  }
}

class _TVTextInputDialogState extends State<TVTextInputDialog> {
  late final TextEditingController _controller;
  late final FocusNode _textNode;
  late final FocusNode _cancelNode;
  late final FocusNode _okNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _textNode   = FocusNode();
    _cancelNode = FocusNode();
    _okNode     = FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _textNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _textNode.dispose();
    _cancelNode.dispose();
    _okNode.dispose();
    super.dispose();
  }

  void _confirm() {
    widget.onConfirm(_controller.text);
  }

  void _cancel() => Navigator.of(context).pop();

  KeyEventResult _handleKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;

    // OK / Отмена по Select или Enter
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.numpadEnter) {
      if (_okNode.hasFocus) { _confirm(); return KeyEventResult.handled; }
      if (_cancelNode.hasFocus) { _cancel(); return KeyEventResult.handled; }
      if (_textNode.hasFocus) { _okNode.requestFocus(); return KeyEventResult.handled; }
    }

    // Навигация вниз / Tab
    if (key == LogicalKeyboardKey.arrowDown || key == LogicalKeyboardKey.tab) {
      if (_textNode.hasFocus)   { _okNode.requestFocus();     return KeyEventResult.handled; }
      if (_okNode.hasFocus)     { _cancelNode.requestFocus(); return KeyEventResult.handled; }
      if (_cancelNode.hasFocus) { _textNode.requestFocus();   return KeyEventResult.handled; }
    }

    // Навигация вверх
    if (key == LogicalKeyboardKey.arrowUp) {
      if (_cancelNode.hasFocus) { _okNode.requestFocus();   return KeyEventResult.handled; }
      if (_okNode.hasFocus)     { _textNode.requestFocus(); return KeyEventResult.handled; }
    }

    // Влево / вправо между кнопками
    if (!_textNode.hasFocus) {
      if (key == LogicalKeyboardKey.arrowLeft) {
        if (_okNode.hasFocus) _cancelNode.requestFocus();
        return KeyEventResult.handled;
      }
      if (key == LogicalKeyboardKey.arrowRight) {
        if (_cancelNode.hasFocus) _okNode.requestFocus();
        return KeyEventResult.handled;
      }
    }

    // Закрыть
    if (key == LogicalKeyboardKey.escape || key == LogicalKeyboardKey.goBack) {
      _cancel();
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      // Перехватываем клавиши на уровне всего диалога
      onKeyEvent: _handleKey,
      child: AlertDialog(
        backgroundColor: const Color(0xFF1e1e1e),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        content: SizedBox(
          width: 480,
          child: TextField(
            focusNode: _textNode,
            controller: _controller,
            autofocus: false,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _okNode.requestFocus(),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFF2a2a2a),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFF444444)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFF4CAF50), width: 2),
              ),
            ),
          ),
        ),
        actions: [
          _FocusableButton(
            focusNode: _cancelNode,
            label: 'Отмена',
            onPressed: _cancel,
            color: const Color(0xFF444444),
          ),
          _FocusableButton(
            focusNode: _okNode,
            label: 'OK',
            onPressed: _confirm,
            color: const Color(0xFF4CAF50),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _FocusableButton extends StatefulWidget {
  final FocusNode focusNode;
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const _FocusableButton({
    required this.focusNode,
    required this.label,
    required this.onPressed,
    required this.color,
  });

  @override
  State<_FocusableButton> createState() => _FocusableButtonState();
}

class _FocusableButtonState extends State<_FocusableButton> {
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    if (mounted) setState(() => _hasFocus = widget.focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    // Focus виджет регистрирует focusNode в дереве —
    // без него requestFocus() не работает
    return Focus(
      focusNode: widget.focusNode,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
          decoration: BoxDecoration(
            color: _hasFocus
                ? widget.color
                : widget.color.withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _hasFocus ? Colors.white : Colors.transparent,
              width: 2,
            ),
            boxShadow: _hasFocus
                ? [BoxShadow(color: widget.color.withOpacity(0.7), blurRadius: 14, spreadRadius: 1)]
                : [],
          ),
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}