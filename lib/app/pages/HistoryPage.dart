import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/app/componentes/PageTitle.dart';
import 'package:flutter_app/app/model/History.dart';
import 'package:intl/intl.dart';

import '../componentes/BasicDateTimeField.dart';
import '../Env.dart';
import '../util/RestUtil.dart';
import 'package:http/http.dart' as http;

class HistoryPage extends StatefulWidget {
  @override
  _HistoryState createState() {
    return _HistoryState();
  }
}

class _HistoryState extends State<HistoryPage> {
  DateTime selectedDate = DateTime.now();
  TextEditingController startDate = TextEditingController();
  TextEditingController finalDate = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History'),
      ),
      body: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//            PageTitle(title: 'History'),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 300,
                          child: BasicDateTimeField(
                            label: 'Start date',
                            format: DateFormat("yyyy-MM-dd HH:mm"),
                            controller: startDate,
                            validator: (value) {
                              if (value == null || value.toString().isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Container(
                            width: 300,
                            child: BasicDateTimeField(
                              label: 'Final date',
                              format: DateFormat("yyyy-MM-dd HH:mm"),
                              controller: finalDate,
                              validator: (value) {
                                if (value == null || value.toString().isEmpty) {
                                  return 'This field is required';
                                }
                                return null;
                              },
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:50.0),
                        child: RaisedButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                             final http.Response response = await http.post('${Env.BASE_URL}/histories',
                                  headers: RestUtil.getDefaultHeader(),
                                  body: jsonEncode(History(startDate.text, finalDate.text)));
                             if (response.statusCode == 201) {
                               Scaffold.of(context).showSnackBar(SnackBar(
                                   content: Text('Dados processados com sucesso')));
                             }else {
                               Scaffold.of(context).showSnackBar(SnackBar(
                                   content: Text('Ocorreu algum erro')));
                             }
                            }
                          },
                          child: Text('Salvar'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
