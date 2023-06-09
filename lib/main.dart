import 'package:flutter/material.dart';
import 'package:play_music_flutter/pages/detail/music_detail_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'base/di/locator.dart';
import 'generated/l10n.dart';
import 'main_viewmodel.dart';
import 'pages/home_page.dart';

void main() {
  setUpInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainVM>(create: (_) => MainVM()),
        ChangeNotifierProvider<MusicDetailVM>(create: (_) => MusicDetailVM())
      ],
      child: MaterialApp(
        title: 'Music APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: const HomePage(),
      ),
    );
  }
}
