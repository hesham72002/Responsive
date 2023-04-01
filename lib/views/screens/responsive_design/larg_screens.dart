import 'package:flutter/material.dart';

import '../all_task_screen.dart';
import '../complete_tasks.dart';
import '../incomplete_task.dart';

class LargeScreen extends StatefulWidget {
  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: Row(
        children: [
          Expanded(
              child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/hesham.jpg'),
                  ),
                  accountName: Text("Hesham"),
                  accountEmail: Text("hesham.7.r@gmail.com")),
              ListTile(
                onTap: () {
                  pageController.jumpToPage(0);
                },
                title: const Text("All Tasks"),
                subtitle: const Text("Go To All Tasks"),
                leading: const Icon(Icons.list),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  pageController.jumpToPage(1);
                },
                title: const Text("Complete Tasks"),
                subtitle: const Text("Go To Complete Tasks"),
                leading: const Icon(Icons.done),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  pageController.jumpToPage(2);
                },
                title: const Text("InComplete Tasks"),
                subtitle: const Text("Go To InComplete Tasks"),
                leading: const Icon(Icons.cancel),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          )),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                AllTasksScreen(refreshPage),
                CompleteTasksScreen(refreshPage),
                InCompleteTasksScreen(refreshPage)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
