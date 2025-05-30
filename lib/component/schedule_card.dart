import 'package:calendar_schedular/const/colors.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final int startTime;
  final int endTime;
  final String content;

  const ScheduleCard ({
    required this.startTime,
    required this.endTime,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: PRIMARY_COLOR,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Time(
                startTime: startTime,
                endTime: endTime,
              ),
              SizedBox(width: 16.0),
              _Content(
                content: content,
              ),
              SizedBox(width: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

// _Time 위젯
class _Time extends StatelessWidget {
  final int startTime; // 시작 시간
  final int endTime; // 종료 시간

  const _Time ({
    required this.startTime,
    required this.endTime,
    Key? key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: PRIMARY_COLOR,
      fontSize: 16.0,
    );

    return Column( // 시간을 위에서 아래로 배치
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( // 숫자가 두 자릿수가 안되면 0으로 채우기
          "${startTime.toString().padLeft(2, "0")}:00",
          style: textStyle,
        ),
        Text(
          "${endTime.toString().padLeft(2, "0")}:00",
          style: textStyle.copyWith(
            fontSize:10.0,
          ),
        ),
      ],
    );
  }
}

// _Content위젯
class _Content extends StatelessWidget {
  final String content; // 내용

  const _Content ({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Expanded( // 최대한 넓게 늘리기
      child: Text(
        content,
      ),
    );
  }
}