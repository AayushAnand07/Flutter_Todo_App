import 'package:flutter/material.dart';
import 'package:flutter_sqflite_todos/models/todo_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:lottie/lottie.dart';

class TodosOverview extends StatelessWidget {
  final List<Todo> todos;

  const TodosOverview({required this.todos});

  @override
  Widget build(BuildContext context) {
    final completedTodosCount = todos.where((e) => e.completed).length;
    // final priorityTask = todos.where((e) => e.priorityLevel)
    return Container(
        //height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Whats up Aayush! ',
                style: TextStyle(color: Colors.white, fontSize: 32),
              )
              //Lottie.asset('assets/list.json', width: 10.0, height: 50.0),
              ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Create Your Todo Now ',
                style: TextStyle(
                    color: Color(0XFFEB05FF),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
              //Lottie.asset('assets/list.json', width: 10.0, height: 50.0),
              ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              //color: Colors.white,
              color: Color(0XFF031956),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 25,
                ),
                CircularPercentIndicator(
                  radius: 100.0,
                  center: new Text(
                    "$completedTodosCount of ${todos.length} ",
                    style: TextStyle(color: Colors.white),
                  ),
                  lineWidth: 10.0,
                  animation: true,
                  animationDuration: 2500,
                  circularStrokeCap: CircularStrokeCap.round,
                  percent: todos.length == 0
                      ? 0
                      : (completedTodosCount / todos.length).toDouble(),
                  progressColor: Color(0XFFEB05FF),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Task Completed ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]));

    // Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const Text(
    //         'My Todos',
    //         style: TextStyle(
    //           fontSize: 28.0,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       const SizedBox(height: 10.0),
    //       Text(
    //         '$completedTodosCount of ${todos.length} completed',
    //         style: const TextStyle(
    //           color: Colors.grey,
    //           fontSize: 20.0,
    //           fontWeight: FontWeight.w600,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
