import 'package:flutter/material.dart';

class Panel extends StatelessWidget {

  final String title, time;
  final Function onTap;
  Panel({this.title='',this.time='',this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(
              color: Colors.redAccent,
              width: 2.0,
          ),
        ),
        child: ListTile(
          title: Text('Morning Walk'),
          subtitle: Text('12:30 pm'),
          trailing: FlatButton(
              onPressed: onTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: Colors.green,
                ),
                height: 40.0,
                width: 70.0,
                child: Center(
                  child: Text('Done',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }
}
