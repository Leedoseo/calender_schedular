import 'package:flutter/material.dart';
import 'package:calendar_schedular/component/custom_text_field.dart';
import 'package:calendar_schedular/const/colors.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({Key? key}) : super(key: key);

  @override

  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {

  @override

  Widget build(BuildContext context) {

    final bottomInset = MediaQuery.of(context).viewInsets.bottom; // 키보드 높이 가져오기

    return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2 + bottomInset, // 화면 반 높이에 키보드 높이 추가하기
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
            child: Column( // 시간 관련 텍스트 필드와 내용 관련 텍스트 필드 세로 배치
              children: [
                Row( // 시작 시간, 종료 시간 가로로 배치
                  children: [
                    Expanded(
                      child: CustomTextField( // 시작 시간 입력 필드
                        label: "시작 시간",
                        isTime: true,
                    ),
                  ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: CustomTextField( // 종료 시간 입력 필드
                        label: "종료 시간",
                        isTime: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Expanded(
                  child: CustomTextField( // 내용 입력 필드
                    label: "내용",
                    isTime: false,
                 ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton( // 저장 버튼
                    onPressed: onSavePressed,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: PRIMARY_COLOR,
                    ),
                  child: Text("저장"),
                ),
              ),
            ],
          ),
        ),
        )
    );
  }

  void onSavePressed() {
  }
}
