import '../../../../Model/QuestionClass.dart';
import 'package:flutter/material.dart';

class DartQuestion extends StatefulWidget {
  const DartQuestion({super.key});

  @override
  State<DartQuestion> createState() => _DartQuestionState();
}

class _DartQuestionState extends State<DartQuestion> {
  final List<Questionclass> _dartList = [
    Questionclass(
      title: 'What is Dart?',
      content:
          '◉ Dart is a client-optimized programming language developed by Google for building mobile, desktop, server, and web applications. It s widely used in Flutter for mobile app development.',
    ),
    Questionclass(
      title: 'What are the main features of Dart?',
      content:
          'Strongly typed (with type inference)\n'
          '◉ Object-oriented (everything is an object)\n'
          '◉ Garbage collected\n'
          '◉ Asynchronous programming support (async/await)\n'
          '◉ Cross-platform development\n'
          '◉ Hot Reload (especially with Flutter)',
    ),
    Questionclass(
      title: 'What are the data types in Dart?',
      content:
          '◉ int\n'
          '◉ double\n'
          '◉ String\n'
          '◉ bool\n'
          '◉ List\n'
          '◉ Map\n'
          '◉ Set\n'
          '◉ Symbol\n'
          '◉ dynamic, var, and Object?\n',
    ),
    Questionclass(
      title:
          ' What is the difference between var, dynamic, and Object in Dart?',
      content:
          '◉ var -	Type inferred at compile-time, but cant change type later.\n\n'
          '◉ dynamic -	Skips type checking at compile-time, type checks happen at runtime.\n\n'
          '◉ Object -	The base class for all types; allows any value but needs casting for specific methods.',
    ),
    Questionclass(
      title: 'Difference between final and const in Dart?',
      content:
          '◉ final: Initialized once at runtime.\n'
          '◉ const: Initialized at compile-time and must be a constant expression.\n',
    ),
    Questionclass(
      title: ' What is Null Safety in Dart?',
      content:
          '◉ Null safety helps prevent null reference errors by distinguishing between nullable and non-nullable types at compile time.',
    ),
    Questionclass(
      title: 'What are Futures and async/await in Dart?',
      content:
          '◉ Future: Represents a potential value or error that will be available at some time in the future.\n\n'
          '◉ async/await: Used to write asynchronous code in a synchronous-like style.\n',
    ),
    Questionclass(
      title: 'Difference between List, Set, and Map in Dart?',
      content:
          '◉ List: Ordered collection (allows duplicate elements).\n\n'
          '◉ Set: Unordered collection (unique elements only).\n\n'
          '◉ Map: Collection of key-value pairs.\n',
    ),
    Questionclass(
      title:
          ' What is the difference between synchronous and asynchronous programming in Dart?',
      content:
          '◉ Synchronous: Code runs sequentially, line-by-line.\n\n'
          '◉ Asynchronous: Code can run independently without blocking the execution (using Future, async, await).\n',
    ),
    Questionclass(
      title: 'How does Dart compile code?',
      content:
          '◉ JIT (Just-In-Time): During development for fast hot reload.\n\n'
          '◉ AOT (Ahead-Of-Time): For release builds for better performance.\n',
    ),
    Questionclass(
      title: 'What is a Constructor in Dart? Types?',
      content:
          '◉ A constructor is a special method to create and initialize objects.\n\nTypes:\n\n'
          '◉ Default Constructor\n'
          '◉ Named Constructor\n'
          '◉ Factory Constructor\n',
    ),
    Questionclass(
      title: 'What is a Factory Constructor?',
      content:
          '◉ A factory constructor returns an instance of a class, often reusing or controlling the instance.',
    ),
    Questionclass(
      title: 'What is a Getter and Setter?',
      content:
          '◉ They control access to private variables.\n\n'
          '◉ A getter method, getName() that retrieves the value of _name.\n\n'
          '◉A setter method setName() that enables controlled modification of _name.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Questions", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: _dartList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              FlutterDetail(question: _dartList[index]),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _dartList[index].title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue.shade900,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.blue.shade900,
                      ),
                    ],
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

class FlutterDetail extends StatelessWidget {
  final Questionclass question;

  const FlutterDetail({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(question.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.question_answer,
                          color: Colors.blue.shade900,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Answer",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    question.content,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
