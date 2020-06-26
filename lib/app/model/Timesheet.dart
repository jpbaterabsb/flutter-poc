
import 'package:json_annotation/json_annotation.dart';

part 'Timesheet.g.dart';

@JsonSerializable()
class Timesheet {
  final String date;
  final String time;
  final int id;

  Timesheet(this.date, this.time, this.id);

  factory Timesheet.fromJson(Map<String, dynamic> json) => _$TimesheetFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetToJson(this);
}