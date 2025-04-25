import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/Model/WidgetsClass.dart';
import 'TabDetail/WidgetsDetail/WidgetsDetailPage.dart';

class WidgetsTab extends StatelessWidget {
  final List<WidgetsClass> _widgetsList = [
    WidgetsClass(
      title: 'Container',
      content:
          'A convenience widget that combines common painting, positioning, and sizing widgets. A container first surrounds the child with padding.',
      codes: '''
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  ''',
      imageUrl: 'assets/logo.png',
    ),
    WidgetsClass(
      title: 'Material App',
      content:
          'An application that uses Material Design. A convenience widget that wraps a number of widgets that are commonly required for Material Design applications.',
      codes: 'Material App',
      imageUrl: 'assets/logo.png',
    ),
    WidgetsClass(
      title: 'Scaffold',
      content:
          'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers and bottom sheets.',
      codes: 'Scaffold',
      imageUrl: 'assets/logo.png',
    ),
    WidgetsClass(
      title: 'AlertDialog',
      content:
          'An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an ...',
      codes: 'AlertDialog',
      imageUrl: 'assets/logo.png',
    ),
    WidgetsClass(
      title: 'TextField',
      content:
          'TextField class. A Material Design text field. A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.',
      codes: 'TextField',
      imageUrl: 'assets/logo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Adds padding around the list
        child: ListView.builder(
          itemCount: _widgetsList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(
                vertical: 6,
              ), // Card margin for spacing
              elevation: 5, // Shadow effect on the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                    '${index + 1}', // Numbering starts from 1
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  _widgetsList[index].title,
                  style: TextStyle(
                    fontSize: 18, // Custom font size for the title
                    fontWeight: FontWeight.w500, // Semi-bold text
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios, // Add an arrow icon to the right
                  size: 16,
                  color: Colors.blueAccent,
                ),
                // Modify the onTap method in WidgetsTab class
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              WidgetDetailPage(widget: _widgetsList[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
