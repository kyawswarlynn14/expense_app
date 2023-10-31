import 'package:expense_app/widgets/expenses.dart';
import 'package:flutter/material.dart ';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kDarkColorScheme.onPrimaryContainer,
              foregroundColor: kDarkColorScheme.primaryContainer),
        cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
          backgroundColor: kDarkColorScheme.primaryContainer,
        )),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kDarkColorScheme.onSecondaryContainer,
                  fontSize: 14)),
        // iconButtonTheme: ThemeData().iconButtonTheme.copyWith(
        //   style: IconButton.styleFrom(
        //      color: kDarkColorScheme.onSecondaryContainer,
        //   )
        // )
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          // scaffoldBackgroundColor: const Color.fromARGB(255, 220, 189, 252)
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: const CardTheme().copyWith(
              color: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          )),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 14))),
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
  // });
}
