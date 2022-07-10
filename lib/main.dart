import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListScreen(),
  ));
}

class WorkerDetails {
  late int id;
  late String name;
  late String role;
  
WorkerDetails({required this.id,required this.name,required this.role});

  }

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      double width=MediaQuery.of(context).size.width;
    List officeDetails = [
      WorkerDetails(id: 1, name: 'Dhina', role: 'Developer'),
      WorkerDetails(id: 2, name: 'Lotus', role: 'Data Entry'),
      WorkerDetails(id: 3, name: 'Rajesh', role: 'Typist'),
      WorkerDetails(id: 4, name: 'Abdul', role: 'Team Leader'),
      WorkerDetails(id: 5, name: 'Ayesha', role: 'Manager'),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        centerTitle: true,
        title: const Text('Workers Details',
        style: TextStyle(fontSize:20,
            fontWeight: FontWeight.w400 )),
      ),
      body: ListView.builder(
          itemCount: 5, itemBuilder: (context, index) => ListTile(
          
            leading: Text(officeDetails[index].id.toString(),
            style: TextStyle(fontSize:width*0.07,
            fontWeight: FontWeight.w500 ),
          ),
            title: Text(officeDetails[index].name,
             style: TextStyle(fontSize:width*0.07,
            fontWeight: FontWeight.w400 )),
            trailing: Text(officeDetails[index].role,
             style: TextStyle(fontSize:width*0.06,
            fontWeight: FontWeight.w400 ))
          )),
    );
  }
}
