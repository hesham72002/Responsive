import 'package:flutter/material.dart';
import 'package:responsive/data/data_source.dart';
import 'package:responsive/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index], function);
        });
  }
}
