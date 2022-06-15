import 'package:flutter/material.dart';

/*
  # サーバーから送られてくる画像URLは ローカルの画像 を指定している時もある

  - オンラインを参照 https://sample.png
  - アプリ内フォルダを参照 assets://sample.png
  - フラッターの組み込みアイコンを参照 fluttericons://12345
*/

class ImageUri {
  /// URLが指す場所の種類
  ImageScheme scheme;

  /// Flutterで利用しやすい状態になった画像のパス 'https://...' 'assets/images/...'
  String path;

  // 不可視のコンストラクタ
  ImageUri._(this.scheme, this.path);

  // 公開用のコンストラクタ
  factory ImageUri.assets(String imageName) {
    return ImageUri('assets://' + imageName);
  }

  // 公開用のコンストラクタ
  factory ImageUri(String imageUri) {
    final components = imageUri.split('://');
    final schemeString = components.first;
    ImageScheme? scheme;
    String? path;
    switch (schemeString) {
      case 'assets':
        scheme = ImageScheme.assets;
        path = 'assets/images/' + components.last;
        break;
      case 'http':
        scheme = ImageScheme.network;
        path = imageUri;
        break;
      case 'https':
        scheme = ImageScheme.network;
        path = imageUri;
        break;
      case 'fluttericons':
        scheme = ImageScheme.flutterIcons;
        path = components.last;
        break;
      default:
        return throw Exception('不正な画像指定です' + imageUri);
    }
    return ImageUri._(scheme, path);
  }
}

/// URLが指す場所の種類
enum ImageScheme {
  assets,
  network,
  flutterIcons,
}

/// URLから画像を表示する
class UriImage extends StatelessWidget {
  // パッケージのテスト表示モード
  final ImageUri imageUri;

  const UriImage(this.imageUri);
  factory UriImage.stringUrl(String url) {
    return UriImage(ImageUri(url));
  }
  factory UriImage.assetsName(String name) {
    return UriImage(ImageUri.assets(name));
  }

  @override
  Widget build(BuildContext context) {
    return image();
  }

  Widget image() {
    switch (imageUri.scheme) {
      case ImageScheme.assets:
        return Image.asset(
          imageUri.path,
          fit: BoxFit.contain,
        );
      case ImageScheme.network:
        return Image.network(
          imageUri.path,
          errorBuilder: (context, exception, stackTrace) {
            // エラー画像 = プレースホルダー
            return const Placeholder();
          },
        );
      case ImageScheme.flutterIcons:
        final codePoint = int.parse(imageUri.path);
        final iconData = IconData(codePoint);
        final icon = Icon(iconData);
        return icon;
    }
  }
}
