/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class $AssetsBackgroundsGen {
  const $AssetsBackgroundsGen();

  /// File path: assets/Backgrounds/Spline.png
  AssetGenImage get spline =>
      const AssetGenImage('assets/Backgrounds/Spline.png');

  /// List of all assets
  List<AssetGenImage> get values => [spline];
}

class $AssetsRiveAssetsGen {
  const $AssetsRiveAssetsGen();

  /// File path: assets/RiveAssets/button.riv
  RiveGenImage get button => const RiveGenImage('assets/RiveAssets/button.riv');

  /// File path: assets/RiveAssets/check.riv
  RiveGenImage get check => const RiveGenImage('assets/RiveAssets/check.riv');

  /// File path: assets/RiveAssets/confetti.riv
  RiveGenImage get confetti =>
      const RiveGenImage('assets/RiveAssets/confetti.riv');

  /// File path: assets/RiveAssets/house.riv
  RiveGenImage get house => const RiveGenImage('assets/RiveAssets/house.riv');

  /// File path: assets/RiveAssets/icons.riv
  RiveGenImage get icons => const RiveGenImage('assets/RiveAssets/icons.riv');

  /// File path: assets/RiveAssets/menu_button.riv
  RiveGenImage get menuButton =>
      const RiveGenImage('assets/RiveAssets/menu_button.riv');

  /// File path: assets/RiveAssets/shapes.riv
  RiveGenImage get shapes => const RiveGenImage('assets/RiveAssets/shapes.riv');

  /// List of all assets
  List<RiveGenImage> get values =>
      [button, check, confetti, house, icons, menuButton, shapes];
}

class $AssetsAvatersGen {
  const $AssetsAvatersGen();

  /// File path: assets/avaters/Avatar 1.jpg
  AssetGenImage get avatar1 =>
      const AssetGenImage('assets/avaters/Avatar 1.jpg');

  /// File path: assets/avaters/Avatar 2.jpg
  AssetGenImage get avatar2 =>
      const AssetGenImage('assets/avaters/Avatar 2.jpg');

  /// File path: assets/avaters/Avatar 3.jpg
  AssetGenImage get avatar3 =>
      const AssetGenImage('assets/avaters/Avatar 3.jpg');

  /// File path: assets/avaters/Avatar 4.jpg
  AssetGenImage get avatar4 =>
      const AssetGenImage('assets/avaters/Avatar 4.jpg');

  /// File path: assets/avaters/Avatar 5.jpg
  AssetGenImage get avatar5 =>
      const AssetGenImage('assets/avaters/Avatar 5.jpg');

  /// File path: assets/avaters/Avatar 6.jpg
  AssetGenImage get avatar6 =>
      const AssetGenImage('assets/avaters/Avatar 6.jpg');

  /// File path: assets/avaters/Avatar Default.jpg
  AssetGenImage get avatarDefault =>
      const AssetGenImage('assets/avaters/Avatar Default.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [avatar1, avatar2, avatar3, avatar4, avatar5, avatar6, avatarDefault];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Arrow Right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/Arrow Right.svg');

  /// File path: assets/icons/User.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/User.svg');

  /// File path: assets/icons/apple_box.svg
  SvgGenImage get appleBox => const SvgGenImage('assets/icons/apple_box.svg');

  /// File path: assets/icons/code.svg
  SvgGenImage get code => const SvgGenImage('assets/icons/code.svg');

  /// File path: assets/icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/icons/email.svg');

  /// File path: assets/icons/email_box.svg
  SvgGenImage get emailBox => const SvgGenImage('assets/icons/email_box.svg');

  /// File path: assets/icons/google_box.svg
  SvgGenImage get googleBox => const SvgGenImage('assets/icons/google_box.svg');

  /// File path: assets/icons/ios.svg
  SvgGenImage get ios => const SvgGenImage('assets/icons/ios.svg');

  /// File path: assets/icons/password.svg
  SvgGenImage get password => const SvgGenImage('assets/icons/password.svg');

  /// File path: assets/icons/profile_img.png
  AssetGenImage get profileImg =>
      const AssetGenImage('assets/icons/profile_img.png');

  /// List of all assets
  List<dynamic> get values => [
        arrowRight,
        user,
        appleBox,
        code,
        email,
        emailBox,
        googleBox,
        ios,
        password,
        profileImg
      ];
}

class Assets {
  Assets._();

  static const $AssetsBackgroundsGen backgrounds = $AssetsBackgroundsGen();
  static const $AssetsRiveAssetsGen riveAssets = $AssetsRiveAssetsGen();
  static const $AssetsAvatersGen avaters = $AssetsAvatersGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider() => AssetImage(_assetName);

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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
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
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class RiveGenImage {
  const RiveGenImage(this._assetName);

  final String _assetName;

  RiveAnimation rive({
    String? artboard,
    List<String> animations = const [],
    List<String> stateMachines = const [],
    BoxFit? fit,
    Alignment? alignment,
    Widget? placeHolder,
    bool antialiasing = true,
    List<RiveAnimationController> controllers = const [],
    OnInitCallback? onInit,
  }) {
    return RiveAnimation.asset(
      _assetName,
      artboard: artboard,
      animations: animations,
      stateMachines: stateMachines,
      fit: fit,
      alignment: alignment,
      placeHolder: placeHolder,
      antialiasing: antialiasing,
      controllers: controllers,
      onInit: onInit,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
