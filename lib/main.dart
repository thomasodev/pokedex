import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pages/pokedex_main_page.dart';

import 'shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: AppTheme.theme,
      home: const PokedexMainPage(),
    );
  }
}
