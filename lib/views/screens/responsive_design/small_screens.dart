import 'package:flutter/material.dart';

import '../all_task_screen.dart';
import '../complete_tasks.dart';
import '../incomplete_task.dart';

class SmallScreen extends StatefulWidget {
  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
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
                Navigator.of(context).pop();
              },
              title: const Text("All Tasks"),
              subtitle: const Text("Go To All Tasks"),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
              },
              title: const Text("Complete Tasks"),
              subtitle: const Text("Go To Complete Tasks"),
              leading: const Icon(Icons.done),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
              },
              title: const Text("InComplete Tasks"),
              subtitle: const Text("Go To InComplete Tasks"),
              leading: const Icon(Icons.cancel),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (v) {
            pageIndex = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(refreshPage),
          CompleteTasksScreen(refreshPage),
          InCompleteTasksScreen(refreshPage)
        ],
      ),
    );
  }
}
