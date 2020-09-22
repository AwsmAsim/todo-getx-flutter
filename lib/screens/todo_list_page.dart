import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get_todo/ui_components/panel.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.snackbar('Coming Soon', '',snackPosition: SnackPosition.BOTTOM ,
            backgroundColor: Colors.white,
              borderColor: Colors.black,
            );
          },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add,
        size: 30.0,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(),
                Panel(
                  title: 'Morning Walk',
                  time: '12:30 pm',
                  onTap: (){},
                ),
                Panel(
                  title: 'Morning Walk',
                  time: '12:30 pm',
                  onTap: (){},
                ),Panel(
                  title: 'Morning Walk',
                  time: '12:30 pm',
                  onTap: (){},
                ),
                Panel(
                  title: 'Morning Walk',
                  time: '12:30 pm',
                  onTap: (){},
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
