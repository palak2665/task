import 'package:flutter/material.dart';

import 'model.dart';

class Services {
  static Future<Result> getData(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/test.json');
    final reportData = resultFromJson(data);
    return reportData;
  }
}
