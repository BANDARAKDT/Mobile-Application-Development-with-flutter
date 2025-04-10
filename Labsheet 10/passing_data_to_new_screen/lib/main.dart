import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoScreen(
        // Added home parameter and passed todos
        todos: List.generate(
          3,
          (i) => Todo(
            title: 'Todo $i',
            description: 'Description of what needs to be done for Todo $i',
          ),
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  const Todo({required this.title, required this.description});
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;

  const TodoScreen(
      {super.key, required this.todos}); // Fixed 'Super' to 'super'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Removed 'const' due to dynamic content
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length, // Fixed itemCount syntax
        itemBuilder: (context, index) {
          // Fixed itemBuilder syntax
          return ListTile(
            title: Text(todos[index].title), // Fixed 'text' to 'Text'
            onTap: () {
              Navigator.push(
                // Fixed 'Push' to 'push'
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      todo: todos[index]), // Fixed 'todo' reference
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Fixed name from 'DetailedScreen' to match reference
  final Todo todo;

  const DetailScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title), // Fixed to use property value
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16.0), // Fixed 'EdgeInsert' to 'EdgeInsets'
        child: Text(todo.description),
      ),
    );
  }
}