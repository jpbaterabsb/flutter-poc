import 'dart:convert';


import 'package:flutter_app/app/model/Timesheet.dart';
import 'package:http/http.dart' as http;
import "package:mobx/mobx.dart";
import '../Env.dart';

part 'TimesheetController.g.dart';

class TimesheetController = _TimesheetController with _$TimesheetController;

abstract class _TimesheetController with Store {
  @observable
  var timesheetList = [];

  @action
  findAll() async {
    http.get("${Env.BASE_URL}/timesheets").then((response) {
      List list = jsonDecode(response.body);
      timesheetList =
          list.map((m) => new Timesheet.fromJson(m)).toList();
    });
  }
}
