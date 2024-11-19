import 'package:flutter/material.dart';

class TitleLarge extends StatelessWidget {
  const TitleLarge(
    this.data, {
    super.key,
    this.textSpan,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.overflow,
    this.softWrap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String? data;
  final InlineSpan? textSpan;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      strutStyle: strutStyle,
      softWrap: softWrap,
      locale: locale,
    );
  }
}

class TitleMedium extends StatelessWidget {
  const TitleMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.overflow,
    this.softWrap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      strutStyle: strutStyle,
      softWrap: softWrap,
      locale: locale,
    );
  }
}

class Caption extends StatelessWidget {
  const Caption(
    this.data, {
    super.key,
    this.textSpan,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.overflow,
    this.softWrap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String data;
  final InlineSpan? textSpan;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      strutStyle: strutStyle,
      softWrap: softWrap,
      locale: locale,
    );
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph(
    this.data, {
    super.key,
    this.textSpan,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.overflow,
    this.softWrap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String data;
  final InlineSpan? textSpan;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      strutStyle: strutStyle,
      softWrap: softWrap,
      locale: locale,
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText(
    this.data, {
    super.key,
    this.textSpan,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.overflow,
    this.softWrap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String data;
  final InlineSpan? textSpan;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      strutStyle: strutStyle,
      softWrap: softWrap,
      locale: locale,
    );
  }
}
