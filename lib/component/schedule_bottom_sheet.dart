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
    return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        label: "시작 시간",
                        isTime: true,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: CustomTextField(
                        label: "종료 시간",
                        isTime: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: CustomTextField(
                    label: "내용",
                    isTime: false,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
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
    );
  }

  void onSavePressed() {
    
  }
}
