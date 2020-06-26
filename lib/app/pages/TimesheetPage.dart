import 'package:flutter/material.dart';
import 'package:flutter_app/app/componentes/TimesheetBox.dart';
import 'package:flutter_app/app/controller/TimesheetController.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TimesheetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimesheetState();
}

class _TimesheetState extends State<TimesheetPage> {
  final controller = TimesheetController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.findAll();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Timesheet'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => Expanded(
                child: SizedBox(
                  height: 400,
                  child: ListView(
                    children: controller.timesheetList.map((t) {
                      return TimesheetBox(
                        key: Key(t.id.toString()),
                        date: t.date,
                        time: t.time,
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
