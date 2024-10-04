import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_manager_app_ber.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskManagerAppBer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 56),
              Text(
                'Add New Task',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Title'
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(

                  hintText: 'Description'
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
