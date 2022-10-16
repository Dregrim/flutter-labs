import 'package:flutter/material.dart';
import 'data.dart';
import 'homepage.dart';
void main() {
  runApp(
     MaterialApp(
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
   MyApp({super.key});
   ScheduleData scheduleData = ScheduleData();
  late List<String> groups = scheduleData.getGroupsNames();
  String? selectedGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('Schedule'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: DropdownButton<String>(
                value: selectedGroup,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: groups
                    .map((group) =>
                    DropdownMenuItem(
                      value: group,
                      child: Text(group),
                    ))
                    .toList(),
                onChanged: (String? newGroup) {selectedGroup = newGroup;}
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(selectedGroup : selectedGroup)));
                },
                child: Text('Продовжити'))
          ],
        ),
      ),
    );
  }}

