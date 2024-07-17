import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

var kColorSchem = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(55, 96, 59, 181),
);
var kDarkColorSchem = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(55, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorSchem,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSchem.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorSchem.primaryContainer,
          foregroundColor: kDarkColorSchem.onPrimaryContainer,
        )),
      ),
      theme: ThemeData().copyWith(
        cardTheme: const CardTheme().copyWith(
          color: kColorSchem.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      home: const Expenses(),
      themeMode: ThemeMode.system,
    ),
  );
}
