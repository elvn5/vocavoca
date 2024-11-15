import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/typography.dart';

final tertiaryStyle = ButtonStyle();

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    this.onLongPress,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior,
    this.statesController,
    required this.text,
    this.iconAlignment = IconAlignment.start,
    this.backgroundColor,
    this.style,
  });

  final String text;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final VoidCallback? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip? clipBehavior;
  final WidgetStatesController? statesController;
  final IconAlignment iconAlignment;
  final Color? backgroundColor;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      clipBehavior: clipBehavior,
      statesController: statesController,
      iconAlignment: iconAlignment,
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
      child: Paragraph(
        text,
        color: Colors.white,
      ),
    );
  }
}
