import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vocavoca/src/extensions/theme_extension.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onSubmitted,
    this.decoration,
    this.controller,
    this.focusNode,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.readOnly = false,
    this.enabled = true,
    this.cursorColor,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.style,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.inputFormatters,
    this.validator,
    this.prefixIcon,
    // this.suffixIcon = const Icon(Icons.cancel, size: 24,),
    this.prefix,
    this.suffix,
    this.labelText,
    this.helperText,
    this.errorText,
    this.counterText,
  });

  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final bool readOnly;
  final bool enabled;
  final Color? cursorColor;
  final double cursorWidth;
  final Radius? cursorRadius;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool autocorrect;
  final bool enableSuggestions;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final Icon? prefixIcon;
  // final Icon suffixIcon;
  final Widget? prefix;
  final Widget? suffix;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final String? counterText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        errorText: errorText,
        counterText: counterText,
        prefixIcon: prefixIcon,
        // suffixIcon: suffixIcon,
        prefix: prefix,
        suffix: suffix,
        filled: true,
        fillColor: context.inputDecorationTheme.fillColor,
        border: context.inputDecorationTheme.border,
        enabledBorder: context.inputDecorationTheme.enabledBorder,
        focusedBorder: context.inputDecorationTheme.focusedBorder,
        errorBorder: context.inputDecorationTheme.errorBorder,
        disabledBorder: context.inputDecorationTheme.disabledBorder,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        isDense: true,
      ),
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      readOnly: readOnly,
      enabled: enabled,
      cursorColor: cursorColor,
      cursorWidth: cursorWidth,
      cursorRadius: cursorRadius,
      style: style,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      autofocus: autofocus,
      autocorrect: autocorrect,
      enableSuggestions: enableSuggestions,
      inputFormatters: inputFormatters,
    );
  }
}
