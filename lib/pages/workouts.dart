import 'package:flutter/material.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({super.key});

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {

  List<String> workouts= [
    'Push Ups',
    'Pull Ups',
    'Running',
    'Squats',
    'Lunge',
    'Plank',
    'Lateral raise',
    'Crunches',
    'Glute Bridge',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workouts'),
        backgroundColor: Colors.pinkAccent,
        titleTextStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ),
        elevation: 4,

      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/exercise');
              },
              title: Text(
                '${workouts[index]}',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/9ghCpUY6JaLtStkZkeH73T-650-80.jpg.webp'),
                radius: 27,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20
              ),
            ),
          );
        },
        itemCount: workouts.length,
      ),
      backgroundColor: Colors.pinkAccent,
    );
  }
}
