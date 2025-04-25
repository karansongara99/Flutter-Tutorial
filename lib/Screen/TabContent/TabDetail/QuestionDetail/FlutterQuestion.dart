import '../../../../Model/QuestionClass.dart';
import 'package:flutter/material.dart';

class FlutterQuestion extends StatefulWidget {
  const FlutterQuestion({super.key});

  @override
  State<FlutterQuestion> createState() => _FlutterQuestionState();
}

class _FlutterQuestionState extends State<FlutterQuestion> {
  final List<Questionclass> _flutterList = [
    Questionclass(
      title: 'What is Flutter?',
      content:
          '◉ Flutter is Google UI toolkit for building natively compiled applications for mobile, web, and desktop from a single1 codebase. It uses the Dart programming language',
    ),
    Questionclass(
      title: 'What are the key advantages of Flutter?',
      content:
          '◉ Cross-platform development: Write once, deploy everywhere.\n\n'
          '◉ Hot reload: See changes instantly during development.\n\n'
          '◉ Rich widget library: Provides a wide range of customizable UI elements.\n\n'
          '◉ Native performance: Compiles to native code.\n\n'
          '◉ Expressive and flexible UI: Allows for highly customized and responsive designs.',
    ),
    Questionclass(
      title: 'What is Dart, and why is it used in Flutter?',
      content:
          '◉ Dart is a client-optimized programming language developed by Google. It is used in Flutter because of its:\n\n'
          '◉ Just-in-Time (JIT) and Ahead-of-Time (AOT) compilation, enabling fast development and excellent performance.\n\n'
          '◉ Rich standard libraries.\n\n'
          '◉ Garbage collection, simplifying memory management.',
    ),
    Questionclass(
      title: 'What are widgets in Flutter?',
      content:
          '◉ Widgets are the fundamental building blocks of a Flutter app UI. Everything in Flutter is a widget, from buttons and text to layout structures.',
    ),
    Questionclass(
      title:
          'What is the difference between StatefulWidget and StatelessWidget?',
      content:
          '◉ StatefulWidget: Used for widgets that require state management.\n\n'
          '◉ StatelessWidget: Used for widgets that do not require state management.',
    ),
    Questionclass(
      title: 'Explain the Flutter app lifecycle.',
      content:
          'Key lifecycle methods:\n\n'
          '◉ initState() – called once when widget is inserted\n'
          '◉ build() – describes UI\n'
          '◉ didUpdateWidget() – when widget config changes\n'
          '◉ dispose() – when widget is removed (clean resources)\n',
    ),
    Questionclass(
      title: 'What is Hot Reload and Hot Restart?',
      content:
          '◉ Hot Reload: injects updated code into the Dart Virtual Machine without restarting the app (faster development).\n\n'
          '◉ Hot Restart: completely rebuilds the app and resets the app state.',
    ),
    Questionclass(
      title: 'What is a BuildContext?',
      content:
          '◉ It a handle to the location of a widget in the widget tree. It’s used to find other widgets or theme information.',
    ),
    Questionclass(
      title: 'What is a Future and a Stream in Dart?',
      content:
          '◉ Future: represents a single async result (like API call).'
          '◉ Stream: represents a sequence of async results over time (like data from sockets, sensors).',
    ),
    Questionclass(
      title: 'How to manage state in Flutter?',
      content:
          'Popular approaches:\n\n'
          '◉ setState (basic)\n'
          '◉ Provider (recommended for simple to mid apps)\n'
          '◉ Riverpod (improved Provider)\n'
          '◉ Bloc / Cubit (for large apps)',
    ),
    Questionclass(
      title: 'Difference between MainAxisAlignment and CrossAxisAlignment?',
      content:
          '◉ MainAxisAlignment controls alignment on the main axis (Row = horizontal, Column = vertical).\n\n'
          '◉ CrossAxisAlignment controls alignment on the cross axis (perpendicular to the main axis).',
    ),
    Questionclass(
      title: 'Explain Flutter Architecture.',
      content:
          '◉ Framework (Dart) → Widgets, Gestures, Animation\n'
          '◉ Engine (C++) → Skia, Text, Accessibility\n'
          '◉ Embedder (Platform-specific code) → iOS, Android, Web, Desktop',
    ),
    Questionclass(
      title: 'How does Navigation work in Flutter?',
      content:
          '◉ push(), pop() for simple stack-based navigation.\n\n'
          '◉ Navigator 2.0 for more complex URL-based navigation (especially in web apps)',
    ),
    Questionclass(
      title: 'Difference between FutureBuilder and StreamBuilder?',
      content:
          '◉ FutureBuilder: builds a widget based on a single async Future result.\n\n'
          '◉ StreamBuilder: builds a widget whenever there’s a new event from a Stream.',
    ),
    Questionclass(
      title: 'What is the pubspec.yaml file?',
      content:
      '◉ It the configuration file for a Flutter app where you manage dependencies, fonts, assets, etc.'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Questions", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: _flutterList.length,
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
                              FlutterDetail(question: _flutterList[index]),
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
                              _flutterList[index].title,
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
