import 'package:flutter/material.dart';
import 'package:light_dark_theme/page/login.dart';
import 'package:light_dark_theme/provider/provider.dart';
import 'package:light_dark_theme/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child: Consumer(builder: (context, UiProvider notifier, child) {
        return MaterialApp(
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const LoginPage(),
        );
      }),
    );
  }
}
