import 'package:flutter/material.dart';
import 'settings_page.dart';
import 'todo_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.description,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TodoListPage(),
            SettingsPage()
          ],
        ),
      ),
    );
  }
}
