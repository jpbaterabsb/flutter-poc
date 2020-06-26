// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Timesheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timesheet _$TimesheetFromJson(Map<String, dynamic> json) {
  return Timesheet(
    json['date'] as String,
    json['time'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$TimesheetToJson(Timesheet instance) => <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'id': instance.id,
    };
