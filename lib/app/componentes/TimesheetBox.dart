import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PageTitle.dart';

class TimesheetBox extends StatelessWidget {


  final String date;
  final String time;

  const TimesheetBox({Key key, this.date, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => print('test'),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 70,
                    child: Text(
                      'Date:',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                          this.date,
                          style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                        )),
                    margin: EdgeInsets.only(left: 20),                        width: 100,
                    height: 50,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Container(
                      child: Text(
                        'Time:',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                            this.time,
                            style: TextStyle(fontSize: 17, color:  Colors.grey[500]),
                          )),
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey[300]),
          left: BorderSide(width: 1, color: Colors.grey[300]),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 5.0, // has the effect of softening the shadow
            spreadRadius: 3.0, // has the effect of extending the shadow
            offset: Offset(
              10.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }
}