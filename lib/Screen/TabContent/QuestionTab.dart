import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'TabDetail/QuestionDetail/ChooseQuizQuestion.dart';

class QuestionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // Two columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 2, // Number of items in the grid
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to a different page based on the tapped index
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterQuizQuestion(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DartQuizQuestion()),
                    );
                    break;
                }
              },
              child: Card(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    index == 0 ? 'Flutter' : 'Dart', // Change the text here
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
