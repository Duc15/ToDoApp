import 'package:flutter/material.dart';
import '../widgets/add_new_task.dart';
import '../widgets/list.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Type something to search....'),
          autofocus: true,
          style: const TextStyle(fontSize: 17, letterSpacing: 0.5),
          onChanged: (val) {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => const AddNewTask(
                  isEditMode: false,
                  id: '',
                ),
              );
            },
          ),
        ],
      ),
      body: const List(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => const AddNewTask(
              isEditMode: false,
              id: '',
            ),
          );
        },
        tooltip: 'Add a new item!',
        child: const Icon(Icons.add),
      ),
    );
  }
}
