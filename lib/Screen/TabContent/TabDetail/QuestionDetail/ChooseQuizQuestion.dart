import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Screen/TabContent/TabDetail/QuestionDetail/DartQuestion.dart';
import 'package:flutter_tutorial/Screen/TabContent/TabDetail/QuestionDetail/FlutterQuiz.dart';
import '../QuestionDetail/./FlutterQuestion.dart';
import 'DartQuiz.dart';

class FlutterQuizQuestion extends StatefulWidget {
  const FlutterQuizQuestion({super.key});

  @override
  State<FlutterQuizQuestion> createState() => _FlutterQuizQuestionState();
}

class _FlutterQuizQuestionState extends State<FlutterQuizQuestion> {
  final List<Map<String, dynamic>> _quizCategories = [
    {
      'title': 'Question',
      'color': Colors.blue,
      'icon': Icons.question_answer,
      'route': FlutterQuestion(),
    },
    {
      'title': 'Quiz',
      'color': Colors.green,
      'icon': Icons.quiz,
      'route': FlutterQuiz(), // Will be implemented later
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Learning", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: _quizCategories.length,
                itemBuilder: (context, index) {
                  return _buildCategoryCard(context, index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, int index) {
    final category = _quizCategories[index];
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          if (category['route'] != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => category['route']),
            );
          }
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [category['color'].withOpacity(0.8), category['color']],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(category['icon'], color: Colors.white, size: 40),
                SizedBox(height: 16),
                Text(
                  category['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*--------------------------------------------------------------------------------------------------*/

class DartQuizQuestion extends StatefulWidget {
  const DartQuizQuestion({super.key});

  @override
  State<DartQuizQuestion> createState() => _DartQuizQuestionState();
}

class _DartQuizQuestionState extends State<DartQuizQuestion> {
  final List<Map<String, dynamic>> _quizCategories = [
    {
      'title': 'Question',
      'color': Colors.blue,
      'icon': Icons.question_answer,
      'route': DartQuestion(),
    },
    {
      'title': 'Quiz',
      'color': Colors.green,
      'icon': Icons.quiz,
      'route': DartQuiz(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Learning", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: _quizCategories.length,
                itemBuilder: (context, index) {
                  return _buildCategoryCard(context, index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, int index) {
    final category = _quizCategories[index];
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          if (category['route'] != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => category['route']),
            );
          }
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [category['color'].withOpacity(0.8), category['color']],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(category['icon'], color: Colors.white, size: 40),
                SizedBox(height: 16),
                Text(
                  category['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}