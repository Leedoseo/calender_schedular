import 'package:flutter/material.dart';
import 'package:calendar_schedular/component/main_calendar.dart';
import 'package:calendar_schedular/component/schedule_card.dart';
import 'package:calendar_schedular/component/today_banner.dart';
import 'package:calendar_schedular/component/schedule_bottom_sheet.dart';
import 'package:calendar_schedular/const/colors.dart';

class HomeScreen extends StatefulWidget { // StatefulWidget으로 변경
  const HomeScreen({Key? key}) : super(key: key);

  @override

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc( // 선택된 날짜를 관리할 변수
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( // 새 일정 버튼
        backgroundColor: PRIMARY_COLOR,
          onPressed: () {
            showModalBottomSheet( // BottomSheet 열기
                context: context,
                isDismissible: true, // 배경 탭했을 때 BottomSheet 닫기
                builder: (_) => ScheduleBottomSheet(),
              isScrollControlled: true,
            );
          },
          child: Icon(
            Icons.add,
          ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate, // 선택된 날짜 전달
              onDaySelected: onDaySelected, // 날짜가 선택됐을 때 실행할 함수
              ),
            SizedBox(height: 8.0),
            TodayBanner(
                selectedDate: selectedDate,
                count: 0
            ),
            SizedBox(height: 8.0),
            ScheduleCard( // 일정 샘플 더미데이터
                startTime: 12,
                endTime: 14,
                content: "플러터 공부"
            ),
            ],
          ),
      ),
    );
  }
  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}

