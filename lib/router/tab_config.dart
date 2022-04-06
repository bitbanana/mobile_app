//
//
//

import 'package:flutter/material.dart';
import 'package:mobile_app/router/page_id.dart';

class TabConfig {
  final List<PageId> pageList;
  final Color backColor;
  final Color frontColorOnSelected;
  final Color frontColorOnUnselected;
  final Map<PageId, String> imageUrls;
  final Map<PageId, String> labeltexts;

  const TabConfig({
    required this.pageList,
    required this.backColor,
    required this.frontColorOnSelected,
    required this.frontColorOnUnselected,
    required this.imageUrls,
    required this.labeltexts,
  });
}
