/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/icons/ic_back.svg');

  /// File path: assets/icons/ic_drawer.svg
  SvgGenImage get icDrawer => const SvgGenImage('assets/icons/ic_drawer.svg');

  /// File path: assets/icons/ic_group.svg
  SvgGenImage get icGroup => const SvgGenImage('assets/icons/ic_group.svg');

  /// File path: assets/icons/ic_menu.svg
  SvgGenImage get icMenu => const SvgGenImage('assets/icons/ic_menu.svg');

  /// File path: assets/icons/ic_next.svg
  SvgGenImage get icNext => const SvgGenImage('assets/icons/ic_next.svg');

  /// File path: assets/icons/ic_option_two.svg
  SvgGenImage get icOptionTwo =>
      const SvgGenImage('assets/icons/ic_option_two.svg');

  /// File path: assets/icons/ic_options.svg
  SvgGenImage get icOptions => const SvgGenImage('assets/icons/ic_options.svg');

  /// File path: assets/icons/ic_play.svg
  SvgGenImage get icPlay => const SvgGenImage('assets/icons/ic_play.svg');

  /// File path: assets/icons/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icBack,
        icDrawer,
        icGroup,
        icMenu,
        icNext,
        icOptionTwo,
        icOptions,
        icPlay,
        icSearch
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_handphone.png
  AssetGenImage get imgHandphone =>
      const AssetGenImage('assets/images/img_handphone.png');

  /// File path: assets/images/img_pic_two.png
  AssetGenImage get imgPicTwo =>
      const AssetGenImage('assets/images/img_pic_two.png');

  /// File path: assets/images/unsplash_PDX_a_82obo.png
  AssetGenImage get unsplashPDXA82obo =>
      const AssetGenImage('assets/images/unsplash_PDX_a_82obo.png');

  /// File path: assets/images/unsplash_mbGxz7pt0jM.png
  AssetGenImage get unsplashMbGxz7pt0jM =>
      const AssetGenImage('assets/images/unsplash_mbGxz7pt0jM.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [imgHandphone, imgPicTwo, unsplashPDXA82obo, unsplashMbGxz7pt0jM];
}

class $AssetsMusicsGen {
  const $AssetsMusicsGen();

  /// File path: assets/musics/Infinity.mp3
  String get infinity => 'assets/musics/Infinity.mp3';

  /// File path: assets/musics/booktok.mp3
  String get booktok => 'assets/musics/booktok.mp3';

  /// File path: assets/musics/making_my_way.mp3
  String get makingMyWay => 'assets/musics/making_my_way.mp3';

  /// File path: assets/musics/waveform.mp3
  String get waveform => 'assets/musics/waveform.mp3';

  /// List of all assets
  List<String> get values => [infinity, booktok, makingMyWay, waveform];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMusicsGen musics = $AssetsMusicsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
