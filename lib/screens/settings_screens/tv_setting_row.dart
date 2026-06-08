import 'package:flutter/material.dart';

/// Универсальная строка настройки для TV-интерфейса.
class TVSettingRow extends StatelessWidget {
  final bool isFocused;
  final String label;
  final IconData? icon;
  final Widget? trailing;
  final Widget? content;
  final String hint;

  const TVSettingRow({
    Key? key,
    required this.isFocused,
    required this.label,
    this.icon,
    this.trailing,
    this.content,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: isFocused ? const Color(0xFF1e3a1e) : const Color(0xFF1e1e1e),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isFocused ? const Color(0xFF4CAF50) : const Color(0xFF2e2e2e),
          width: isFocused ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: isFocused ? const Color(0xFF4CAF50) : Colors.grey,
                  size: 22,
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    color: isFocused ? Colors.white : Colors.grey,
                    fontSize: 17,
                    fontWeight: isFocused ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          if (content != null) ...[
            const SizedBox(height: 10),
            content!,
          ],
          if (isFocused) ...[
            const SizedBox(height: 6),
            Text(
              hint,
              style: const TextStyle(
                color: Color(0xFF4CAF50),
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// TV-стиль toggle (ON/OFF) без Material Switch.
class TVToggle extends StatelessWidget {
  final bool value;

  const TVToggle({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 58,
      height: 28,
      decoration: BoxDecoration(
        color: value ? const Color(0xFF4CAF50) : const Color(0xFF333333),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: value ? const Color(0xFF81C784) : const Color(0xFF555555),
        ),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            left: value ? 30 : 2,
            top: 2,
            child: Container(
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: value ? 0 : 16,
                right: value ? 16 : 0,
              ),
              child: Text(
                value ? 'ON' : 'OFF',
                style: TextStyle(
                  color: value ? Colors.white : Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}