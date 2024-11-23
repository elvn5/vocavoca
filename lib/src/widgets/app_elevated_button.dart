import 'package:flutter/material.dart';
import 'package:vocavoca/src/widgets/mini_loader.dart';
import 'package:vocavoca/src/widgets/typography.dart';

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
    this.disabled = false,
    this.isLoading = false,
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
  final bool disabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    const ButtonStyle disabledStyle = ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.grey),
    );

    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      clipBehavior: clipBehavior,
      statesController: statesController,
      iconAlignment: iconAlignment,
      style: disabled
          ? disabledStyle
          : style ?? Theme.of(context).elevatedButtonTheme.style,
      child: isLoading
          ? const MiniLoader()
          : Paragraph(
              text,
              color: Colors.white,
            ),
    );
  }
}
