import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.imageUrl,
    this.errorWidget,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.color,
    this.colorBlendMode,
    this.filterQuality = FilterQuality.low,
    this.fadeOutDuration,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.curve,
    this.httpHeaders,
    this.memCacheWidth,
    this.memCacheHeight,
    this.useOldImageOnMemoryCacheError,
    this.cacheKey,
    this.progressIndicatorBuilder,
    this.imageBuilder,
  });

  final String imageUrl;
  final Widget Function(BuildContext context, String url, dynamic error)?
      errorWidget;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment alignment;
  final Color? color;
  final BlendMode? colorBlendMode;
  final FilterQuality filterQuality;
  final Duration? fadeOutDuration;
  final Duration fadeInDuration;
  final Curve? curve;
  final Map<String, String>? httpHeaders;
  final int? memCacheWidth;
  final int? memCacheHeight;
  final bool? useOldImageOnMemoryCacheError;
  final String? cacheKey;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final ImageWidgetBuilder? imageBuilder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      color: color,
      colorBlendMode: colorBlendMode,
      filterQuality: filterQuality,
      fadeOutDuration: fadeOutDuration,
      fadeInDuration: fadeInDuration,
      httpHeaders: httpHeaders,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      cacheKey: cacheKey,
      progressIndicatorBuilder: progressIndicatorBuilder,
      imageBuilder: imageBuilder,
    );
  }
}
