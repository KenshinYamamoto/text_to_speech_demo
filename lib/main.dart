import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_to_speech_demo/screens/favorite_screen.dart';
import 'package:text_to_speech_demo/screens/home.dart';
import 'package:text_to_speech_demo/screens/selected_category.dart';
import 'package:text_to_speech_demo/screens/tabs_screen.dart';

import './screens/home_screen.dart';
import './screens/health_condition.dart';
import './screens/paint_screen.dart';
import './screens/take_hand.dart';
import './screens/title_screen.dart';
import './screens/speech_to_text.dart';
import './screens/input_text.dart';
import './screens/favorite_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text To Speech Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.redAccent[100],
          secondary: Colors.greenAccent,
          // background: Colors.greenAccent[100],
          background: const Color.fromARGB(255, 252, 239, 217),
          error: Colors.red,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.amber,
        ),
      ),
      home: const TitleScreen(),
      routes: {
        TabsScreen.routeName: (context) => const TabsScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        Home.routeName: (context) => const Home(),
        // SelectedCategory.routeName: (context) => const SelectedCategory(),
        HealthCondition.routeName: (context) => const HealthCondition(),
        // PaintScreen.routeName: (context) => const PaintScreen(),
        TakeHand.routeName: (context) => const TakeHand(),
        SpeechToText.routeName: (context) => const SpeechToText(),
        InputText.routeName: (context) => const InputText(),
        FavoriteScreen.routeName: (context) => const FavoriteScreen(),
      },
    );
  }
}
