import 'package:flutter/material.dart';

class DartQuiz extends StatefulWidget {
  const DartQuiz({super.key});

  @override
  State<DartQuiz> createState() => _DartQuizState();
}

class _DartQuizState extends State<DartQuiz> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _showScore = false;
  int _lastScore = 0;
  int? _selectedOption;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'What is Dart primarily used for?',
      'options': [
        'Backend development',
        'Mobile and web development',
        'Game development',
        'Machine learning',
      ],
      'correctAnswer': 2,
    },
    {
      'question': 'Dart is developed by which company?',
      'options': ['Microsoft', 'Facebook', 'Google', 'Amazon'],
      'correctAnswer': 2,
    },
    {
      'question': 'Which keyword is used to declare a constant value in Dart',
      'options': ['const', 'static', 'final', 'var'],
      'correctAnswer': 0,
    },
    {
      'question':
          ' What is the default value of an uninitialized variable in Dart?',
      'options': ['0', 'null', 'undefined', 'false'],
      'correctAnswer': 1,
    },
    {
      'question':
          'Which of the following is a valid way to create a list in Dart?',
      'options': [
        'List list = [1,2,3];',
        'list = new List();',
        'List<int> list = [];',
        'All of the above',
      ],
      'correctAnswer': 3,
    },
    {
      'question':
          ' Which of the following types are built-in data types in Dart?',
      'options': ['int', 'double', 'String', 'All of the above'],
      'correctAnswer': 3,
    },
    {
      'question': 'Dart is primarily used for developing ____?',
      'options': [
        'Server-side applications',
        'Mobile applications',
        'Machine learning models',
        'Operating Systems',
      ],
      'correctAnswer': 1,
    },
    {
      'question':
          ' Which of these is the correct syntax to create a named function in Dart?',
      'options': [
        'function myFunction() {}',
        'def myFunction() {}',
        'void myFunction() {}',
        'fun myFunction() {}',
      ],
      'correctAnswer': 2,
    },
    {
      'question': ' How do you declare an asynchronous function in Dart?',
      'options': [
        'Using sync keyword',
        'Using async keyword',
        'Using await keyword',
        'Using async* keyword',
      ],
      'correctAnswer': 1,
    },
    {
      'question':
          'In Dart, which collection is ordered and allows duplicate elements?',
      'options': ['Set', 'Map', 'List', 'Queue'],
      'correctAnswer': 2,
    },
  ];

  void _answerQuestion(int selectedAnswer) {
    setState(() {
      _selectedOption = selectedAnswer;
    });

    Future.delayed(Duration(milliseconds: 500), () {
      if (selectedAnswer ==
          _questions[_currentQuestionIndex]['correctAnswer']) {
        setState(() {
          _score++;
        });
      }

      if (_currentQuestionIndex < _questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _selectedOption = null;
        });
      } else {
        setState(() {
          _showScore = true;
          _lastScore = _score;
        });
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _showScore = false;
      _selectedOption = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Quiz", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: _showScore ? _buildScoreScreen() : _buildQuestionScreen(),
      ),
    );
  }

  Widget _buildQuestionScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Indicator
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: LinearProgressIndicator(
                value: (_currentQuestionIndex + 1) / _questions.length,
                backgroundColor: Colors.grey.shade200,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue.shade900),
                minHeight: 10,
              ),
            ),
            SizedBox(height: 20),
            // Question Counter
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade900.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blue.shade900.withOpacity(0.2),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Colors.blue.shade900,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Question ${_currentQuestionIndex + 1} of ${_questions.length}",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Question Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _questions[_currentQuestionIndex]['question'],
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                    height: 1.3,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // Options
            ..._questions[_currentQuestionIndex]['options'].asMap().entries.map(
              (entry) {
                final index = entry.key;
                final option = entry.value;
                final isSelected = _selectedOption == index;
                final isCorrect =
                    index == _questions[_currentQuestionIndex]['correctAnswer'];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: InkWell(
                    onTap:
                        _selectedOption == null
                            ? () => _answerQuestion(index)
                            : null,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isSelected
                                ? (isCorrect
                                    ? Colors.green.shade50
                                    : Colors.red.shade50)
                                : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color:
                              isSelected
                                  ? (isCorrect ? Colors.green : Colors.red)
                                  : Colors.blue.shade900,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color:
                                  isSelected
                                      ? (isCorrect ? Colors.green : Colors.red)
                                      : Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                String.fromCharCode(index),
                                style: TextStyle(
                                  color:
                                      isSelected
                                          ? Colors.white
                                          : Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          if (isSelected)
                            Icon(
                              isCorrect ? Icons.check_circle : Icons.cancel,
                              color: isCorrect ? Colors.green : Colors.red,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Score Display
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade900,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Score",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "$_score/${_questions.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            // Last Score
            if (_lastScore > 0)
              ElevatedButton(
                onPressed: _resetQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                ),
                child: Text(
                  "Restart Quiz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
