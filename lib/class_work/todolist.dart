import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final todoController = TextEditingController();

  //
  List todoList = [
    ["Offer Prayer", false],
  ];

  void _addTask() {
    setState(() {
      todoList.add([todoController.text.trim(), false]);
    });
    Navigator.pop(context);
  }

  showMyAlertBox() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Todo Task"),
          content: TextField(
            controller: todoController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text("Enter any Task"),
            ),
          ),

          //
          actions: [
            ElevatedButton(
              onPressed: () {
                _addTask();
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: todoList.isEmpty
          ? Center(child: Text("There is NO Todo Task Press + Button to Add"))
          : ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final todo = todoList[index];
                return Dismissible(
                  key: Key(todo[index].toString()),
                  onDismissed: (direction) {
                    setState(() {});
                  },
                  confirmDismiss: (direction) {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Delete Todo Task"),
                          content: Text(
                            "Are you sure want to delete Todo Task",
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: Text("Delete"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text("Cancel"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ListTile(
                      tileColor: Colors.green,
                      leading: Checkbox(
                        value: todo[1],
                        onChanged: (value) {
                          setState(() {
                            todo[1] = value;
                          });
                        },
                        focusColor: Colors.white,
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        hoverColor: Colors.white,
                      ),

                      //
                      title: Text(
                        todo[0],
                        style: TextStyle(color: Colors.white),
                      ),

                      //
                    ),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        onPressed: () {
          showMyAlertBox();
        },
        child: Center(child: Icon(Icons.add)),
      ),
    );
  }
}
