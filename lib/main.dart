import 'package:flutter/material.dart';
import "package:calendar_schedular/screen/home_screen.dart";
import 'package:intl/date_symbol_data_local.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized(); // 플러터 프레임워크가 준비될 때까지 기다리기

  await initializeDateFormatting(); // intl 패키지 초기화
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}