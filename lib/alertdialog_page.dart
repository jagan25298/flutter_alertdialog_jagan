import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Concept'),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(
            onTap: () {
              print('Deleted Button Clicked');
              _deleteLog(context);
            },
              child: Text('Delete'))],),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Alert Dialog',style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );

  }

  Future <void> _deleteLog(BuildContext context) async{
    return showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Are you sure do you want to deleted?'),
          actions: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            } , child: Text('No')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('Yes')),
          ],
        );
    });
  }
}
