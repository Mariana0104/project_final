import 'package:flutter/material.dart';
import 'package:proyect_gibhub/models/todo.dart';

class TodoItemWidget extends StatelessWidget {
  final Todo todoItem;
  final VoidCallback onDelete;
  final VoidCallback onEdit;
  TodoItemWidget({
    @required this.todoItem,
    @required this.onDelete,
    @required this.onEdit,
  });


  @override

  Widget build(BuildContext context) {
    return InkWell(
      onTap: onEdit,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(_getFirstTwoWordsTitle(),
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            backgroundColor: Colors.orangeAccent,
          ),
          title: Text(todoItem.title),
          subtitle: Text(todoItem.subtitle),
          trailing: IconButton(
            onPressed: onDelete,
            icon: Icon(Icons.delete_outline,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }

  String _getFirstTwoWordsTitle() {
    return todoItem.title.substring(0,2).toUpperCase();
  }
}