import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "Student Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          body: Column(
            children: [
              buildExpansionTileCard(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Virat_Kohli_in_New_Delhi_in_December_2018.jpg/260px-Virat_Kohli_in_New_Delhi_in_December_2018.jpg",
                  "Virat Kohli",
                  "HND037S"),
              buildExpansionTileCard(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
                  "Rohit sama",
                  "HND0054"),
              //buildExpansionTileCard(),
            ],
          ),
        ),
      ),
    );
  }

  ExpansionTileCard buildExpansionTileCard(img, name, adno) {
    return ExpansionTileCard(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      title: Text(name),
      subtitle: Text(adno),
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.bloodtype,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "B+",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "+94 075 9983201",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.home,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Neervely south,Jaffna",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.schedule),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Exam Details"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.book),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Attendance Details"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.money),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Exam Fees"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
