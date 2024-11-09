import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/typography.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
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

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      clipBehavior: clipBehavior,
      statesController: statesController,
      iconAlignment: iconAlignment,
      style: ButtonStyle(
        backgroundColor:
            Theme.of(context).textButtonTheme.style!.backgroundColor,
      ),
      child: Paragraph(
        text,
        color: Colors.deepPurple,
      ),
    );
  }
}
