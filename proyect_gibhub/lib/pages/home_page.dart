import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyect_gibhub/models/todo.dart';
import 'package:proyect_gibhub/pages/profile_page.dart';
import 'package:proyect_gibhub/widgets/todo_item_widget.dart';

import 'add_todo_page.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  List<Todo> _listTodo = [];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Text('Notas',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: IconButton(
                icon: Icon(Icons.person,
                    size: 20),
                onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()
                      )
                  );
                }
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _listTodo.length,
          itemBuilder: (BuildContext context, int index) {
            return TodoItemWidget(
              todoItem: _listTodo[index],
              onDelete: () {
                _confirmDelete(index);
              },
              onEdit: () {
                _saveTodo(index, _listTodo[index]);
              },
            );
          }
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom:26.0),
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            _goToAddPage();
          },
          child: Icon(Icons.add_box_outlined,
              size: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


  void _goToAddPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => AddTodoPage()))
        .then((todoItem) {
      if (todoItem != null) {
        setState(() {
          _listTodo.add(todoItem);
        });
      }
    });
  }

  void _confirmDelete(int index) {
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: Text('Borrar nota'),
              content: Text('¿Estás seguro de borrar esta nota?'),
              actions: [
                TextButton(onPressed: () {
                  Navigator.pop(context);
                },
                    child: Text('CANCELAR')),
                TextButton(onPressed: () {
                  _deleteTODO(index);
                },
                    child: Text('ACEPTAR')),
              ],
            )
    );
  }

  void _deleteTODO(int index) {
    setState(() {
      _listTodo.removeAt(index);
    });
    Navigator.pop(context);
  }

  void _saveTodo(int index, Todo todo) {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                AddTodoPage(
                  todo: todo,
                ))).then((todoItem) {
      if (todoItem != null) {
        setState(() {
          _listTodo[index] = todoItem;
        });
      }
    });
  }
}
