/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Camera.png
  AssetGenImage get camera => const AssetGenImage('assets/images/Camera.png');

  /// File path: assets/images/Edit.png
  AssetGenImage get edit => const AssetGenImage('assets/images/Edit.png');

  /// File path: assets/images/Ellipse.png
  AssetGenImage get ellipse => const AssetGenImage('assets/images/Ellipse.png');

  /// File path: assets/images/Vector.png
  AssetGenImage get vector => const AssetGenImage('assets/images/Vector.png');

  /// File path: assets/images/Work.png
  AssetGenImage get work => const AssetGenImage('assets/images/Work.png');

  /// File path: assets/images/battery-charging.png
  AssetGenImage get batteryCharging =>
      const AssetGenImage('assets/images/battery-charging.png');

  /// File path: assets/images/buildings.png
  AssetGenImage get buildings =>
      const AssetGenImage('assets/images/buildings.png');

  /// File path: assets/images/card-edit.png
  AssetGenImage get cardEdit =>
      const AssetGenImage('assets/images/card-edit.png');

  /// File path: assets/images/eletro.png
  AssetGenImage get eletro => const AssetGenImage('assets/images/eletro.png');

  /// File path: assets/images/frame.png
  AssetGenImage get frame => const AssetGenImage('assets/images/frame.png');

  /// File path: assets/images/moneys.png
  AssetGenImage get moneys => const AssetGenImage('assets/images/moneys.png');

  /// File path: assets/images/paason.png
  AssetGenImage get paason => const AssetGenImage('assets/images/paason.png');

  /// File path: assets/images/receipt-item.png
  AssetGenImage get receiptItem =>
      const AssetGenImage('assets/images/receipt-item.png');

  /// File path: assets/images/security-card.png
  AssetGenImage get securityCard =>
      const AssetGenImage('assets/images/security-card.png');

  /// File path: assets/images/water.png
  AssetGenImage get water => const AssetGenImage('assets/images/water.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        camera,
        edit,
        ellipse,
        vector,
        work,
        batteryCharging,
        buildings,
        cardEdit,
        eletro,
        frame,
        moneys,
        paason,
        receiptItem,
        securityCard,
        water
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
