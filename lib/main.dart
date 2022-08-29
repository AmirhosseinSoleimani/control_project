import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/navigation_bottom_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './providers/main_task_data.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainTaskData())
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''), // Persian, no country code
        ],
        title: 'Control Project App',
        theme: ThemeData(
            primaryColor: Colors.blueAccent
        ),
        home: NavigationBottomBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}