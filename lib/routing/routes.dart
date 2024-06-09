import 'package:flutter/material.dart';
import 'package:osama_portfolio/plain/plain_page.dart';

class Routes {
  // Route name constant
  static const String plainPage = '/plain';

  /// The map used to define routes to be provided in [MaterialApp]
  static final Map<String, WidgetBuilder> allRoutes = {
    plainPage: (context) => const PlainPage(),
  };
}
