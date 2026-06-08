import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rich_console/printRich.dart';

class CustomColorPicker extends StatefulWidget {
  final Color initialColor;
  final Function(Color) onColorChanged;
  final Function(bool) onSaveChanged;

  const CustomColorPicker({
    Key? key,
    required this.initialColor,
    required this.onColorChanged, required this.onSaveChanged,
  }) : super(key: key);

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  late Color selectedColor;
  final Map<int, FocusNode> _nodes = {};

  // ВСЕ ЦВЕТА МАТЕРИАЛА
  final List<Color> colors = [
    // Red
    Colors.red[50]!,
    Colors.red[100]!,
    Colors.red[200]!,
    Colors.red[300]!,
    Colors.red[400]!,
    Colors.red[500]!,
    Colors.red[600]!,
    Colors.red[700]!,
    Colors.red[800]!,
    Colors.red[900]!,
    // Pink
    Colors.pink[50]!,
    Colors.pink[100]!,
    Colors.pink[200]!,
    Colors.pink[300]!,
    Colors.pink[400]!,
    Colors.pink[500]!,
    Colors.pink[600]!,
    Colors.pink[700]!,
    Colors.pink[800]!,
    Colors.pink[900]!,
    // Purple
    Colors.purple[50]!,
    Colors.purple[100]!,
    Colors.purple[200]!,
    Colors.purple[300]!,
    Colors.purple[400]!,
    Colors.purple[500]!,
    Colors.purple[600]!,
    Colors.purple[700]!,
    Colors.purple[800]!,
    Colors.purple[900]!,
    // Deep Purple
    Colors.deepPurple[50]!,
    Colors.deepPurple[100]!,
    Colors.deepPurple[200]!,
    Colors.deepPurple[300]!,
    Colors.deepPurple[400]!,
    Colors.deepPurple[500]!,
    Colors.deepPurple[600]!,
    Colors.deepPurple[700]!,
    Colors.deepPurple[800]!,
    Colors.deepPurple[900]!,
    // Indigo
    Colors.indigo[50]!,
    Colors.indigo[100]!,
    Colors.indigo[200]!,
    Colors.indigo[300]!,
    Colors.indigo[400]!,
    Colors.indigo[500]!,
    Colors.indigo[600]!,
    Colors.indigo[700]!,
    Colors.indigo[800]!,
    Colors.indigo[900]!,
    // Blue
    Colors.blue[50]!,
    Colors.blue[100]!,
    Colors.blue[200]!,
    Colors.blue[300]!,
    Colors.blue[400]!,
    Colors.blue[500]!,
    Colors.blue[600]!,
    Colors.blue[700]!,
    Colors.blue[800]!,
    Colors.blue[900]!,
    // Light Blue
    Colors.lightBlue[50]!,
    Colors.lightBlue[100]!,
    Colors.lightBlue[200]!,
    Colors.lightBlue[300]!,
    Colors.lightBlue[400]!,
    Colors.lightBlue[500]!,
    Colors.lightBlue[600]!,
    Colors.lightBlue[700]!,
    Colors.lightBlue[800]!,
    Colors.lightBlue[900]!,
    // Cyan
    Colors.cyan[50]!,
    Colors.cyan[100]!,
    Colors.cyan[200]!,
    Colors.cyan[300]!,
    Colors.cyan[400]!,
    Colors.cyan[500]!,
    Colors.cyan[600]!,
    Colors.cyan[700]!,
    Colors.cyan[800]!,
    Colors.cyan[900]!,
    // Teal
    Colors.teal[50]!,
    Colors.teal[100]!,
    Colors.teal[200]!,
    Colors.teal[300]!,
    Colors.teal[400]!,
    Colors.teal[500]!,
    Colors.teal[600]!,
    Colors.teal[700]!,
    Colors.teal[800]!,
    Colors.teal[900]!,
    // Green
    Colors.green[50]!,
    Colors.green[100]!,
    Colors.green[200]!,
    Colors.green[300]!,
    Colors.green[400]!,
    Colors.green[500]!,
    Colors.green[600]!,
    Colors.green[700]!,
    Colors.green[800]!,
    Colors.green[900]!,
    // Light Green
    Colors.lightGreen[50]!,
    Colors.lightGreen[100]!,
    Colors.lightGreen[200]!,
    Colors.lightGreen[300]!,
    Colors.lightGreen[400]!,
    Colors.lightGreen[500]!,
    Colors.lightGreen[600]!,
    Colors.lightGreen[700]!,
    Colors.lightGreen[800]!,
    Colors.lightGreen[900]!,
    // Lime
    Colors.lime[50]!,
    Colors.lime[100]!,
    Colors.lime[200]!,
    Colors.lime[300]!,
    Colors.lime[400]!,
    Colors.lime[500]!,
    Colors.lime[600]!,
    Colors.lime[700]!,
    Colors.lime[800]!,
    Colors.lime[900]!,
    // Yellow
    Colors.yellow[50]!,
    Colors.yellow[100]!,
    Colors.yellow[200]!,
    Colors.yellow[300]!,
    Colors.yellow[400]!,
    Colors.yellow[500]!,
    Colors.yellow[600]!,
    Colors.yellow[700]!,
    Colors.yellow[800]!,
    Colors.yellow[900]!,
    // Amber
    Colors.amber[50]!,
    Colors.amber[100]!,
    Colors.amber[200]!,
    Colors.amber[300]!,
    Colors.amber[400]!,
    Colors.amber[500]!,
    Colors.amber[600]!,
    Colors.amber[700]!,
    Colors.amber[800]!,
    Colors.amber[900]!,
    // Orange
    Colors.orange[50]!,
    Colors.orange[100]!,
    Colors.orange[200]!,
    Colors.orange[300]!,
    Colors.orange[400]!,
    Colors.orange[500]!,
    Colors.orange[600]!,
    Colors.orange[700]!,
    Colors.orange[800]!,
    Colors.orange[900]!,
    // Deep Orange
    Colors.deepOrange[50]!,
    Colors.deepOrange[100]!,
    Colors.deepOrange[200]!,
    Colors.deepOrange[300]!,
    Colors.deepOrange[400]!,
    Colors.deepOrange[500]!,
    Colors.deepOrange[600]!,
    Colors.deepOrange[700]!,
    Colors.deepOrange[800]!,
    Colors.deepOrange[900]!,
    // Brown
    Colors.brown[50]!,
    Colors.brown[100]!,
    Colors.brown[200]!,
    Colors.brown[300]!,
    Colors.brown[400]!,
    Colors.brown[500]!,
    Colors.brown[600]!,
    Colors.brown[700]!,
    Colors.brown[800]!,
    Colors.brown[900]!,
    // Grey
    Colors.grey[50]!,
    Colors.grey[100]!,
    Colors.grey[200]!,
    Colors.grey[300]!,
    Colors.grey[400]!,
    Colors.grey[500]!,
    Colors.grey[600]!,
    Colors.grey[700]!,
    Colors.grey[800]!,
    Colors.grey[900]!,
    // Blue Grey
    Colors.blueGrey[50]!,
    Colors.blueGrey[100]!,
    Colors.blueGrey[200]!,
    Colors.blueGrey[300]!,
    Colors.blueGrey[400]!,
    Colors.blueGrey[500]!,
    Colors.blueGrey[600]!,
    Colors.blueGrey[700]!,
    Colors.blueGrey[800]!,
    Colors.blueGrey[900]!,
  ];

  @override
  void initState() {
    super.initState();
    selectedColor = widget.initialColor;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusInitial();
    });
  }


  void _focusInitial() {
    final index = colors.indexOf(selectedColor);
    final safeIndex = index == -1 ? 0 : index;

    _nodes[safeIndex]?.requestFocus();
  }

  FocusNode _nodeFor(int index) {
    return _nodes.putIfAbsent(index, () => FocusNode());
  }

  @override
  void dispose() {
    for (final n in _nodes.values) {
      n.dispose();
    }
    super.dispose();
  }

  void _select(int index) {
    setState(() {
      selectedColor = colors[index];
    });
    widget.onColorChanged(selectedColor);
  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: colors.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 10,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final isSelected = colors[index] == selectedColor;

        return Focus(
          focusNode: _nodeFor(index),
          onFocusChange: (hasFocus) {
            if (hasFocus) {
              _select(index);
            }
          },

          onKeyEvent: (node, event) {
            if (event is KeyDownEvent) {
              final key = event.logicalKey;
              if (key == LogicalKeyboardKey.select ||
                  key == LogicalKeyboardKey.numpadEnter ||
                  key == LogicalKeyboardKey.space) {
                setState(() {
                  selectedColor = colors[index];
                });
                widget.onColorChanged(colors[index]); // confirm
                widget.onSaveChanged(true);
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isSelected ? Colors.white : Colors.transparent,
                width: 3,
              ),
              boxShadow: isSelected
                  ? [
                BoxShadow(
                  color: colors[index].withOpacity(0.7),
                  blurRadius: 12,
                  spreadRadius: 2,
                )
              ]
                  : [],
            ),
            child: isSelected
                ? const Icon(Icons.check, color: Colors.white)
                : null,
          ),
        );
      },
    );
  }
}

extension on Color {
  String toHex() {
    return '#${value.toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }
}
