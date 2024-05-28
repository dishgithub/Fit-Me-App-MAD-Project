import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  List<int> minList= [1,2,3,4,5,6,7,8,9,10,15,20,30,45,60];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise'),
        elevation: 5,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "00:00",
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          Divider(
            height: 40,
            color: Colors.grey[300],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Enter Duration: ", style: TextStyle(fontSize: 25),),
              DropdownButton(
                items: minList.map(
                  (e) => DropdownMenuItem(value: e,child: Text('${e} minutes', style: TextStyle(fontSize: 20),))
                ).toList(),
                onChanged: (value){

                },
                value: 1,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Enter push ups: ", style: TextStyle(fontSize: 25),),
            ],
          )
        ],
      ),
    );
  }
}
