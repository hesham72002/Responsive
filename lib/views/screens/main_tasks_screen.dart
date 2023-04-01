import 'package:flutter/material.dart';
import 'package:responsive/views/screens/all_task_screen.dart';
import 'package:responsive/views/screens/complete_tasks.dart';
import 'package:responsive/views/screens/incomplete_task.dart';

class MainTasksScreen extends StatefulWidget {
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(Object context) {
    return Scaffold(
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
        title: const Text("Responsive App"),
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
