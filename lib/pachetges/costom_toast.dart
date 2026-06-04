import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToast {
  static final List<_ToastEntry> _toastEntries = [];
  static  double _toastHeight = 160.h;
  static const double _toastSpacing = 8.0;

  /// Показать custom toast
  static void showCustom({
    required BuildContext context,
    required Widget Function(BuildContext, VoidCallback) builder,
    AlignmentGeometry alignment = Alignment.bottomRight,
    required Duration autoCloseDuration,// = const Duration(seconds: 5),
    required Duration animationDuration,// = const Duration(milliseconds: 300),
    EdgeInsets margin = const EdgeInsets.all(16),
    double? width,
    double? height,
    VoidCallback? onDismiss,
  }) {
    final overlay = Overlay.of(context);

    final toastEntry = _ToastEntry();

    toastEntry.overlayEntry = OverlayEntry(
      builder: (context) =>
          _ToastWidget(
            builder: builder,
            alignment: alignment,
            animationDuration: animationDuration,
            autoCloseDuration: autoCloseDuration,
            margin: margin,
            width: width,
            height: height,
            toastEntry: toastEntry,
            onDismiss: () {
              _removeToast(toastEntry);
              onDismiss?.call();
            },
          ),
    );

    _toastEntries.add(toastEntry);
    overlay.insert(toastEntry.overlayEntry!);

    // Обновляем позиции всех toast
    _updateAllToasts();
  }

  /// Удалить конкретный toast
  static void _removeToast(_ToastEntry toastEntry) {
    if (_toastEntries.contains(toastEntry)) {
      toastEntry.overlayEntry?.remove();
      _toastEntries.remove(toastEntry);

      // Обновляем позиции оставшихся toast
      _updateAllToasts();
    }
  }

  /// Обновить позиции всех toast
  static void _updateAllToasts() {
    for (int i = 0; i < _toastEntries.length; i++) {
      _toastEntries[i].index = i;
      _toastEntries[i].overlayEntry?.markNeedsBuild();
    }
  }

  /// Закрыть все toast
  static void dismissAll() {
    for (var entry in _toastEntries) {
      entry.overlayEntry?.remove();
    }
    _toastEntries.clear();
  }

  /// Закрыть последний toast
  static void dismiss() {
    if (_toastEntries.isNotEmpty) {
      _removeToast(_toastEntries.last);
    }
  }

  /// Вычислить offset для toast по индексу
  static double _calculateOffset(int index, int totalToasts) {
    return (totalToasts - 1 - index) * (_toastHeight - _toastSpacing);
  }
}
/// Класс для хранения информации о toast
class _ToastEntry {
  OverlayEntry? overlayEntry;
  int index = 0;
}

/// Внутренний виджет для отображения toast
class _ToastWidget extends StatefulWidget {
  final Widget Function(BuildContext, VoidCallback) builder;
  final AlignmentGeometry alignment;
  final Duration animationDuration;
  final Duration autoCloseDuration;
  final EdgeInsets margin;
  final double? width;
  final double? height;
  final _ToastEntry toastEntry;
  final VoidCallback onDismiss;

  const _ToastWidget({
    required this.builder,
    required this.alignment,
    required this.animationDuration,
    required this.autoCloseDuration,
    required this.margin,
    required this.toastEntry,
    required this.onDismiss,
    this.width,
    this.height,
  });

  @override
  State<_ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();

    // Автоматическое закрытие
    Future.delayed(widget.autoCloseDuration, () {
      if (mounted) {
        _close();
      }
    });
  }

  void _close() async {
    await _controller.reverse();
    if (mounted) {
      widget.onDismiss();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = widget.builder(context, _close);

    // Применяем размеры если они заданы
    if (widget.width != null || widget.height != null) {
      content = SizedBox(
        width: widget.width,
        height: widget.height,
        child: content,
      );
    }

    // Вычисляем смещение вверх для текущего toast
    final offset = CustomToast._calculateOffset(
      widget.toastEntry.index,
      CustomToast._toastEntries.length,
    );

    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: widget.alignment,
        child: Padding(
          padding: EdgeInsets.only(
            left: widget.margin.left,
            top: widget.margin.top,
            right: widget.margin.right,
            bottom: widget.margin.bottom + offset,
          ),
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            offset: Offset(0, 0),
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: content,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
