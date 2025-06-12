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
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LCWidget extends StatelessWidget {
  const LCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LContainerWidget(),
    );
  }
}

class LContainerWidget extends StatelessWidget {
  const LContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better layout and theming
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                // Increased margin
                decoration: BoxDecoration(
                  // Use BoxDecoration for more control
                  color: Theme.of(context)
                      .colorScheme
                      .primary, // Use colorScheme for better theming
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  boxShadow: [
                    // Add subtle shadow
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                // Responsive width
                height: 100.0,
                // Slightly increased height
                child: Center(
                  child: Text(
                    'I am Container',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          // Use theme text styles
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimary, // Use onPrimary color
                          fontWeight: FontWeight.w600, // Semi-bold font
                        ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                // Increased padding
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.center,
                transform: Matrix4.skewY(0.15),
                // Reduced skew
                child: Text(
                  'Hai, I am Slanting',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        // Use headlineSmall
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headlineSmall!.fontSize! *
                          1.2 +
                      60.0,
                ),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0.1),
                // Reduced rotation
                child: Text(
                  'I am also Slanting, but see my edges',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 70),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer, // Use primaryContainer
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .secondaryContainer, // use secondary container
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .tertiaryContainer, //use tertiary container
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceVariant, // use surface variant
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */
  ''',
      imageUrl: 'assets/Container.jpg',
    ),
    WidgetsClass(
      title: 'Material App',
      content:
          'An application that uses Material Design. A convenience widget that wraps a number of widgets that are commonly required for Material Design applications.',
      codes: '''
/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LMaterialWidget extends StatelessWidget {
  const LMaterialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Optional: Removes the debug banner
      title: 'Flutter Tutorial App',
      // Sets the app title (visible in the app switcher)
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 4), // Styles all ElevatedButton widgets
        ),
        // Add more theme properties as needed (e.g., textTheme, appBarTheme)
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context)
            .colorScheme
            .secondary
            .withOpacity(0.3), // Sets the background color
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('MaterialApp'), // Sets the AppBar title
          centerTitle: true, // Centers the AppBar title
          elevation: 0, // Removes the AppBar shadow
          // Add more AppBar properties as needed (e.g., actions, leading)
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.widgets,
                    size: 60,
                    color: Theme.of(context).primaryColor), // Adds an icon
                const SizedBox(height: 20),
                const Text(
                  'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
                  style: TextStyle(fontSize: 16, height: 1.6),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add action here if needed (e.g., navigate to another screen)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/MaterialApp.jpg',
    ),
    WidgetsClass(
      title: 'Scaffold',
      content:
          'In Flutter, Scaffold is a key layout component that helps developers quickly create the basic structure for an app user interface. It acts as a container for organizing UI design solutions, such as the app bar, navigation drawer, bottom navigation bar, and the main content area.',
      codes: '''
      /* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LScaffoldWidget extends StatefulWidget {
  const LScaffoldWidget({super.key});

  @override
  State<LScaffoldWidget> createState() => _LScaffoldWidgetState();
}

class _LScaffoldWidgetState extends State<LScaffoldWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // Sets the background color
      // App bar with primary color and actions
      appBar: AppBar(
        title: const Text('Scaffold'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _count = 0;
              });
            },
            tooltip: 'Reset Counter',
          )
        ],
      ),

      // Body with background color using theme
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Text(
            'You have pressed the button \$_count times.',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      // Bottom Navigation Bar using primary color
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),

      // Floating Action Button using secondary color
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */
  ''',
      imageUrl: 'assets/Scaffold.jpg',
    ),
    WidgetsClass(
      title: 'AppBar',
      content:
          'AppBar is usually the topmost component of the app (or sometimes the bottom-most), it contains the toolbar and some other common action buttons. ',
      codes: '''
      /* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();
const SnackBar snackBar = SnackBar(content: Text('Notification Clicked'));

class LAppBarWidget extends StatelessWidget {
  const LAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: scaffoldKey,
      child: Scaffold(
        backgroundColor: Theme.of(context)
            .colorScheme
            .secondary
            .withOpacity(0.3), // Sets the background color
        // App bar using theme colors
        appBar: AppBar(
          title: const Text('AppBar Demo'),
          backgroundColor: Theme.of(context).primaryColor,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                scaffoldKey.currentState!.showSnackBar(snackBar);
              },
            ),
            IconButton(
              icon: const Icon(Icons.close),
              tooltip: 'Close',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),

        // Body with theme-based text style
        body: Center(
          child: Text(
            'This is the home page',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/AppBar.jpg',
    ),
    WidgetsClass(
      title: 'Text',
      content:
          'The Text widget in Flutter is used to display a string of text with a single style. It’s the simplest widget for displaying text and is frequently used for displaying labels, instructions, or information within your application.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LTWidget extends StatelessWidget {
  const LTWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LTextWidget(),
    );
  }
}

class LTextWidget extends StatelessWidget {
  const LTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better layout and theming
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // Center text horizontally
          children: <Widget>[
            Text(
              'Simple Text',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // Use theme text style
            ),
            Text(
              'Overflow Text will be skipped automatically. So lets have some Long text to get skipped',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    // Use headlineSmall
                    fontWeight: FontWeight.w700, // Bold
                  ),
              textAlign: TextAlign.center, // Center text
            ),
            Text(
              'Shadow Text',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                // Use headlineMedium
                color:
                    Theme.of(context).colorScheme.tertiary, // Use theme color
                shadows: <Shadow>[
                  Shadow(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary, // Use theme color
                    offset: const Offset(2, 3), // Adjusted shadow offset
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Hi, I am ',
                style: Theme.of(context).textTheme.bodyLarge, // Use bodyLarge
                children: <TextSpan>[
                  TextSpan(
                    text: 'Italic, ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  TextSpan(
                    text: 'Bold, ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  TextSpan(
                    text: 'Normal',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            RichText(
              softWrap: true,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'I am ',
                style: Theme.of(context).textTheme.bodyLarge, // Use bodyLarge
                children: <TextSpan>[
                  TextSpan(
                    text: 'RichText ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          // Use headlineSmall
                          color: Theme.of(context)
                              .colorScheme
                              .primary, // Use theme color
                        ),
                  ),
                  TextSpan(
                    text: 'similar to ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  TextSpan(
                    text: 'Text.rich',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Text.jpg',
    ),
    WidgetsClass(
      title: 'TextForm Field',
      content:
          'A FormField that contains a TextField.\n\n'
          'This is a convenience widget that wraps a TextField widget in a FormField.\n\n'
          'A Form ancestor is not required. The Form allows one to save, reset, or validate multiple fields at once. To use without a Form, pass a GlobalKey<FormFieldState> (see GlobalKey) to the constructor and use GlobalKey.currentState to save or reset the form field',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LTextFormField extends StatefulWidget {
  const LTextFormField({super.key});

  @override
  State<LTextFormField> createState() => _LTextFormFieldState();
}

class _LTextFormFieldState extends State<LTextFormField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  bool _obscureText = true;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Submitted: \${_controller.text}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _controller.clear(),
                ),
              ),
              validator: (value) => value == null || value.isEmpty
                  ? 'Name cannot be empty'
                  : null,
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                icon: const Icon(Icons.lock),
                hintText: 'Enter your password',
                labelText: 'Password *',
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => setState(() {
                    _obscureText = !_obscureText;
                  }),
                ),
              ),
              validator: (value) => value == null || value.length < 6
                  ? 'Password must be at least 6 characters'
                  : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/TextFormField.jpg',
    ),
    WidgetsClass(
      title: 'Button',
      content:
          'Buttons are material components that provide the user a single tap facility for taking actions, making choices, submitting forms, saving data, opening a new page, etc. Buttons are triggered when the user taps on them. They are the most commonly used feature provided in almost all Flutter apps. For using buttons, you need to import the Material Components package for Flutter, i.e., “package:flutter/material.dart“. Based on their classification, buttons are divided into two categories – deprecated and non-deprecated. The button works on material apps only.',
      codes: '''
/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LBWidget extends StatelessWidget {
  const LBWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LButtonWidget(),
    );
  }
}

class LButtonWidget extends StatelessWidget {
  const LButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // TextButton: A simple text-based button.
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
                // Use theme primary color for text.
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                // Add padding for better touch target.
                textStyle: Theme.of(context)
                    .textTheme
                    .labelLarge, // Use theme's labelLarge text style.
              ),
              child: const Text('Text Button'),
            ),

            // ElevatedButton: A raised button with a shadow.
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                // Use theme primary color for background.
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                // Use onPrimary color for text.
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                // Add padding for better touch target.
                textStyle: Theme.of(context).textTheme.labelLarge,
                // Use theme's labelLarge text style.
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8)), // Add rounded corners.
              ),
              child: const Text('Elevated Button'),
            ),

            // IconButton: A button with an icon.
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sms_failed,
                color: Theme.of(context)
                    .colorScheme
                    .error, // Use error color to indicate failure.
                size: 36,
              ),
              tooltip: 'Image Button', // Add tooltip for accessibility.
            ),

            // Material and InkWell: For a custom button with a ripple effect.
            Material(
              color: Theme.of(context).colorScheme.secondaryContainer,
              // Use secondary container color for background.
              borderRadius: BorderRadius.circular(8),
              // Add rounded corners to Material.
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                // Match InkWell radius to Material.
                child: const SizedBox(
                    width: 80.0,
                    height: 40.0), // Set fixed size for the button.
              ),
            ),

            // RawMaterialButton: A highly customizable button.
            RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              // Make the button circular.
              elevation: 2,
              // Add a subtle elevation.
              splashColor: Theme.of(context).splashColor.withOpacity(0.2),
              // Use theme splash color with reduced opacity.
              fillColor: Theme.of(context).colorScheme.tertiary,
              // Use tertiary color for background.
              highlightColor: Theme.of(context).highlightColor.withOpacity(0.2),
              // Use theme highlight color with reduced opacity.
              child: Icon(
                Icons.play_arrow,
                color: Theme.of(context)
                    .colorScheme
                    .onTertiary, // Use onTertiary color for icon.
              ),
            ),

            // BackButton: A button to navigate back.
            BackButton(
              onPressed: () {},
              color: Theme.of(context)
                  .colorScheme
                  .onSurface, // Use onSurface color for visibility.
            ),

            // CloseButton: A button to close a dialog or screen.
            CloseButton(
              onPressed: () {},
              color: Theme.of(context)
                  .colorScheme
                  .onSurface, // Use onSurface color for visibility.
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */
  ''',
      imageUrl: 'assets/Button.jpg',
    ),
    WidgetsClass(
      title: 'Snack Bar',
      content:
          'SnackBar is a widget provided by Flutter to display a dismissible pop-up message on your application. It is used to show users if certain actions take place in our applications. For example, if the user login process fails due to some reason, so to inform the user to try again we can use snackbar. It pops up on the screen, and it can also perform operations like undoing the action that has taken place. Snackbar displays the informative message for a very short time and when the time is completed, it disappears on its own. The recommended onscreen time for a SnackBar is 5-10s. It is provided in the material package of the flutter libraries.',
      codes: '''
/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LSWidget extends StatelessWidget {
  const LSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LSnackBar(),
    );
  }
}

class LSnackBar extends StatelessWidget {
  const LSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // Increased padding for better spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Center the column content vertically
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Show a simple SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Simple SnackBar',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onInverseSurface), // Use themed color
                      ),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .inverseSurface, // Use themed color
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primary, // Use themed button color
                  foregroundColor: Theme.of(context)
                      .colorScheme
                      .onPrimary, // Use themed button color
                ),
                child: const Text('Simple SnackBar'),
              ),
              const SizedBox(height: 16), // Add spacing between buttons
              ElevatedButton(
                onPressed: () {
                  // Show a colored SnackBar for 0.5 seconds.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'SnackBar for 0.5 seconds',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .error), // Use themed error color
                      ),
                      duration: const Duration(milliseconds: 500),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .tertiaryContainer, // Use themed color
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                child: const Text('Colored SnackBar - 0.5 Seconds'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Show a SnackBar with an image.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Theme.of(context)
                                .colorScheme
                                .primary, // Use themed icon color
                          ),
                          const SizedBox(width: 8),
                          // Add spacing between icon and text
                          Text(
                            'Hai',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .error), // Use themed error color
                          ),
                        ],
                      ),
                      duration: const Duration(seconds: 1),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .secondaryContainer, // Use themed color
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                child: const Text('SnackBar with image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */
  ''',
      imageUrl: 'assets/SnackBar.jpg',
    ),
    WidgetsClass(
      title: 'Alert',
      content:
          'A Material Design alert dialog.\n'
          'An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/cupertino.dart'; // Import Cupertino for CupertinoAlertDialog
import 'package:flutter/material.dart';

class LAWidget extends StatelessWidget {
  const LAWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LAlertWidget(),
    );
  }
}

class LAlertWidget extends StatelessWidget {
  const LAlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Function to Show SnackBar on dialog dismiss
    void showSnackBar(String text, String ans) {
      final SnackBar snackBar = SnackBar(
        duration: const Duration(milliseconds: 500),
        backgroundColor: ans.compareTo('Yes') == 0
            ? Theme.of(context).colorScheme.primaryContainer // Use theme color
            : Theme.of(context).colorScheme.errorContainer, // Use theme color
        content: Row(
          children: <Widget>[
            Icon(
              ans.compareTo('Yes') == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo('Yes') == 0
                  ? Theme.of(context).colorScheme.primary // Use theme color
                  : Theme.of(context).colorScheme.tertiary, // Use theme color
              size: 24.0,
              semanticLabel: text,
            ),
            const SizedBox(width: 8), // Add spacing
            Text(
              text,
              style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface), // Use theme color
            ),
          ],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    // Simple Dialog
    Future<void> simpleDialog() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(
              'Simple Dialog, Is it nice?',
              style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface), // Use theme color
            ),
            backgroundColor:
                Theme.of(context).colorScheme.surface, // Use theme color
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
                child: Text(
                  'Yes',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .primary), // Use theme color
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'No');
                },
                child: Text(
                  'No',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .error), // Use theme color
                ),
              ),
            ],
          );
        },
      )) {
        case 'Yes':
          showSnackBar('Thanks!', 'Yes');
          break;
        case 'No':
          showSnackBar('Oh! No... Try to provide you best', 'No');
          break;
      }
    }

    // Alert Dialog
    Future<void> alertDialog() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Alert Dialog',
              style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface), // Use theme color
            ),
            content: Text(
              'Is it nice?',
              style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface), // Use theme color
            ),
            backgroundColor:
                Theme.of(context).colorScheme.surface, // Use theme color
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
                child: Text(
                  'Yes',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .primary), // Use theme color
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'No');
                },
                child: Text(
                  'No',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .error), // Use theme color
                ),
              ),
            ],
          );
        },
      )) {
        case 'Yes':
          showSnackBar('Thanks!', 'Yes');
          break;
        case 'No':
          showSnackBar('Oh! No... Try to provide you best', 'No');
          break;
      }
    }

    // Time Picker Dialog
    void timerDialog() {
      final DateTime now = DateTime.now();
      showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
        builder: (BuildContext context, Widget? child) {
          // Add builder for theming
          return Theme(
            data: Theme.of(context),
            child: child!,
          );
        },
      ).then((TimeOfDay? onValue) {
        showSnackBar(onValue?.format(context) ?? '', 'ok');
      });
    }

    // Date Picker Dialog
    void datePickerDialog() {
      final DateTime now = DateTime.now();
      showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
        builder: (BuildContext context, Widget? child) {
          // Add builder for theming
          return Theme(
            data: Theme.of(context),
            child: child!,
          );
        },
      ).then((DateTime? onValue) {
        showSnackBar('\$onValue', 'ok');
      });
    }

    // Cupertino Dialog
    Future<void> cupertinoDialog() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(
              'Welcome',
              style: TextStyle(
                  color: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .color), // Use cupertino theme color
            ),
            content: Text(
              'Cupertino Dialog, Is it nice?',
              style: TextStyle(
                  color: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .color), // Use cupertino theme color
            ),
            actions: <CupertinoDialogAction>[
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
                child: Text(
                  'Yes',
                  style: TextStyle(
                      color: CupertinoTheme.of(context)
                          .primaryColor), // Use cupertino theme color
                ),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context, 'No');
                },
                child: Text(
                  'No',
                  style: TextStyle(
                      color: CupertinoTheme.of(context)
                          .primaryColor), // Use cupertino theme color
                ),
              ),
            ],
          );
        },
      )) {
        case 'Yes':
          showSnackBar('Thanks!', 'Yes');
          break;
        case 'No':
          showSnackBar('Oh! No... Try to provide you best', 'No');
          break;
      }
    }

    return Scaffold(
      // Use Scaffold for better layout
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: simpleDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: alertDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: datePickerDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Date Picker Dialog'),
            ),
            ElevatedButton(
              onPressed: timerDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Timer Picker Dialog'),
            ),
            ElevatedButton(
              onPressed: cupertinoDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Cupertino Dialog'),
            )
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Alert.jpg',
    ),
    WidgetsClass(
      title: 'Column',
      content:
          'A widget that displays its children in a vertical array.\n\n'
          'To cause a child to expand to fill the available vertical space, wrap the child in an Expanded widget.\n\n'
          'The Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.',
      codes: '''
/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LColumn extends StatefulWidget {
  const LColumn({super.key});

  @override
  State<LColumn> createState() => _LColumnState();
}

enum ALIGN { spaceEvenly, start, center }

class _LColumnState extends State<LColumn> {
  ALIGN? _character = ALIGN.spaceEvenly;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'This is the Column Widget - Item1',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const Text(
                    'This is the Column Widget - Item2',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Image.asset(
                    'image/logo.webp',
                    fit: BoxFit.fitHeight,
                  ),
                  const Text(
                    'This is the Column Widget - Item4',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),

                  //new Container()
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              children: <Widget>[
                Radio(
                  value: ALIGN.spaceEvenly,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                    });
                  },
                ),
                const Text('Evently'),
                Radio(
                  value: ALIGN.start,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.start;
                    });
                  },
                ),
                const Text('Start'),
                Radio(
                  value: ALIGN.center,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.center;
                    });
                  },
                ),
                const Text('Center'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */
  ''',
      imageUrl: 'assets/Column.jpg',
    ),
    WidgetsClass(
      title: 'Row',
      content:
          'A widget that displays its children in a horizontal array.\n\n'
          'To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded widget.\n\n'
          'The Row widget does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LRow extends StatefulWidget {
  const LRow({super.key});

  @override
  State<LRow> createState() => _LRowState();
}

enum SingingCharacter { spaceEvenly, start, center }

class _LRowState extends State<LRow> {
  SingingCharacter? _character = SingingCharacter.spaceEvenly;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: _mainAxisAlignment,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.green[50],
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Item1',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow[50],
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Item2',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.red[50],
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Item3',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(
            children: <Widget>[
              Radio(
                value: SingingCharacter.spaceEvenly,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                  });
                },
              ),
              const Text('Evently'),
              Radio(
                value: SingingCharacter.start,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    _mainAxisAlignment = MainAxisAlignment.start;
                  });
                },
              ),
              const Text('Start'),
              Radio(
                value: SingingCharacter.center,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    _mainAxisAlignment = MainAxisAlignment.center;
                  });
                },
              ),
              const Text('Center'),
            ],
          ),
        )
      ],
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Row.jpg',
    ),
    WidgetsClass(
      title: 'Icon',
      content:
          'Icon class in Flutter is used to show specific icons in our app. Instead of creating an image for our icon, we can simply use the Icon class for inserting an icon in our app. For using this class you must ensure that you have set uses-material-design: true in the pubsec.yaml file of your object',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LIcon extends StatelessWidget {
  const LIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: Center(
        // Center the column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.primary, // Use themed color
              size: 48,
              semanticLabel: 'Add', // Added semantic label
            ),
            Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.error, // Use themed color
              size: 48,
              semanticLabel: 'Favorite',
            ),
            Icon(
              Icons.beach_access,
              color: Theme.of(context).colorScheme.tertiary, // Use themed color
              size: 48.0,
              semanticLabel: 'Beach Access', // Added semantic label
            ),
            Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.secondary,
              size: 48,
              semanticLabel: "Settings",
            ),
            Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              size: 48,
              semanticLabel: "Notifications",
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Icon.jpg',
    ),
    WidgetsClass(
      title: 'Text Filed',
      content:
          'A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.\n\n'
          'The text field calls the onChanged callback whenever the user changes the text in the field. If the user indicates that they are done typing in the field (e.g., by pressing a button on the soft keyboard), the text field calls the onSubmitted callback.  ',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LTextField extends StatefulWidget {
  const LTextField({super.key});

  @override
  State<LTextField> createState() => _LTextFieldState();
}

class _LTextFieldState extends State<LTextField> {
  bool isValid = true; // Tracks the validity of the input.
  final TextEditingController _controller =
      TextEditingController(); // Controller for the validated TextField.

  // Function to validate the input (numbers only).
  void validateInput(String value) {
    setState(() {
      isValid = int.tryParse(value) !=
          null; // Checks if the input is a valid integer.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Simple TextField example.
            const Text('Simple Text Field'),
            const TextField(), // Basic TextField with default settings.

            const SizedBox(height: 12),

            // TextField with hint text and no border.
            const Text('Text with hint text and no border'),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none, // Removes the default border.
                hintText: 'Enter your Name', // Provides a hint to the user.
              ),
            ),

            const SizedBox(height: 12),

            // TextField with hint text and an outline border.
            const Text('Text with hint text and with border'),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(), // Adds an outline border.
                hintText: 'Enter your Name',
              ),
            ),

            const SizedBox(height: 12),

            // TextField with validations, decorations, and number input.
            const Text('Text with validations and decorations'),
            TextField(
              controller: _controller,
              // Connects the TextField to the controller.
              textAlign: TextAlign.center,
              // Centers the text input.
              keyboardType: TextInputType.number,
              // Restricts input to numbers.
              decoration: InputDecoration(
                border: const OutlineInputBorder(), // Adds an outline border.
                labelText: 'Enter number', // Label above the input field.
                errorText: isValid
                    ? null
                    : 'Only Numbers Allowed', // Shows error message if input is invalid.
              ),
              onChanged: validateInput,
              // Calls validateInput on every text change.
              onSubmitted: (String value) {
                // Handles the submitted value.
                if (isValid && value.isNotEmpty) {
                  // Shows a SnackBar with the entered value if valid.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Entered Value: \$value')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/TextFeild.jpg',
    ),
    WidgetsClass(
      title: 'List View',
      content:
          'ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.\n\n'
          'If non-null, the itemExtent forces the children to have the given extent in the scroll direction.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LListViewWidget extends StatelessWidget {
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  LListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: Column(
        // Use Column to add title
        children: <Widget>[
          Expanded(
            // Expand to fill available space
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 35.0,
                maxHeight: 250.0, // Increased max height for better visibility
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child: _listBuilder(context)),
                  // Pass context to _listBuilder
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // The ListView.builder constructor takes an IndexedWidgetBuilder, which builds the children on demand.
  Widget _listBuilder(BuildContext context) {
    // Accept context as parameter
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 500,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index % 10]], // Use amber color
          child: Center(
            child: Text(
              'Item \$index',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium, // Use theme text style
            ),
          ),
        );
      },
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/ListView.jpg',
    ),
    WidgetsClass(
      title: 'Gird View',
      content:
          'The main axis direction of a grid is the direction in which it scrolls (the scrollDirection).\n\n'
          'The most commonly used grid layouts are GridView.count, which creates a layout with a fixed number of tiles in the cross axis, and GridView.extent, which creates a layout with tiles that have a maximum cross-axis extent. A custom SliverGridDelegate can produce an arbitrary 2D arrangement of children, including arrangements that are unaligned or overlapping.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'dart:math';

import 'package:flutter/material.dart';

class LGrid extends StatelessWidget {
  const LGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        // Added main axis spacing
        crossAxisCount: 2,
        children: List<Widget>.generate(
          16,
          (int index) {
            return GridTile(
              child: Card(
                elevation: 3.0, // Added elevation for a subtle shadow
                shape: RoundedRectangleBorder(
                  // Added rounded corners
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                    .withOpacity(0.8), // Reduced opacity
                child: Center(
                  // Center the index text
                  child: Text(
                    'Item \$index',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white, // Set text color to white
                        ),
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

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/GridView.jpg',
    ),
    WidgetsClass(
      title: 'Expanded',
      content:
          'A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.\n\n'
          'Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill the available space along the main axis (e.g., horizontally for a Row or vertically for a Column). If multiple children are expanded, the available space is divided among them according to the flex factor.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LExpanded extends StatelessWidget {
  const LExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).colorScheme.primary, // Use theme color
              height: 50,
              child: Center(
                child: Text(
                  'Container Top',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary), // Use theme color
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary, // Use theme color
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .tertiary, // Use theme color
                            height: 100,
                            child: Center(
                              child: Text(
                                'flex: 2',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary), // Use theme color
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer, // Use theme color
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer), // Use theme color
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .tertiary, // Use theme color
                            height: 100,
                            child: Center(
                              child: Text(
                                'flex: 1',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary), // Use theme color
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .tertiary, // Use theme color
                            height: 100,
                            child: Center(
                              child: Text(
                                'flex: 2',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary), // Use theme color
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .primaryContainer, // Use theme color
                            height: 100,
                            child: Center(
                              child: Text(
                                'flex: 3',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer), // Use theme color
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .tertiary, // Use theme color
                            height: 100,
                            child: Center(
                              child: Text(
                                'flex: 1',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary), // Use theme color
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.primary, // Use theme color
              height: 50,
              child: Center(
                child: Text(
                  'Container Bottom',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary), // Use theme color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Expanded.jpg',
    ),
    WidgetsClass(
      title: 'Sized Box',
      content: 'If given a child, this widget forces it to have a specific width and/or height. These values will be ignored if this widgets parent does not permit them. For example, this happens if the parent is the screen (forces the child to be the same size as the parent), or another SizedBox (forces its child to have a specific width and/or height). This can be remedied by wrapping the child SizedBox in a widget that does permit it to be any size up to the size of the parent, such as Center or Align.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LSizedBox extends StatelessWidget {
  const LSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text('Simple Button'),
          ),
          const SizedBox(height: 20),
          // Use const SizedBox for better performance
          ElevatedButton(
            onPressed: () {},
            child: const Text('Simple Button'),
          ),
          SizedBox(
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Button with specific height'),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 150, // Increase width for better visibility
            child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Button with specific width'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Button with infinity width'),
            ),
          ),
          const SizedBox(height: 20),
          //Add more SizedBox to show its effect.
          ElevatedButton(
            onPressed: () {},
            child: const Text('Another Button'),
          )
        ],
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/SizedBox.jpg',
    ),
    WidgetsClass(
      title: 'Stack',
      content: 'A widget that positions its children relative to the edges of its box.\n\n'
          'This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LStack extends StatelessWidget {
  const LStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: 400,
            height: 400,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 25,
            height: 25,
            color: Colors.greenAccent,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Stack.jpg',
    ),
    WidgetsClass(
      title: 'Drawer',
      content: 'A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.\n\n'
          'Drawers are typically used with the Scaffold.drawer property. The child of the drawer is usually a ListView whose first child is a DrawerHeader that displays status information about the current user. The remaining drawer children are often constructed with ListTiles, often concluding with an AboutListTile.',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LDrawer extends StatelessWidget {
  const LDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(title: const Text('Navigation Drawer')),
        body: const Center(child: Text('My Page!')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                leading: const Icon(
                  Icons.alarm,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.message,
                ),
                title: const Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                leading: const Icon(
                  Icons.email,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                leading: const Icon(
                  Icons.phone,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 4'),
                leading: const Icon(
                  Icons.camera,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 5'),
                leading: const Icon(
                  Icons.watch,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 6'),
                leading: const Icon(
                  Icons.exit_to_app,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Drawer.jpg',
    ),
    WidgetsClass(
      title: 'Card',
      content: 'Card is a built-in widget in Flutter which derives its design from Google Material Design Library. The functionality of this widget on screen is, that it is a bland space or panel with round corners and a slight elevation on the lower side\n. It comes with many properties like color, shape, shadow colour, etc',
      codes: '''/* ╔══════════════════════════════════════════╗
   ║              START OF FILE               ║
   ╚══════════════════════════════════════════╝ */

import 'package:flutter/material.dart';

class LCard extends StatelessWidget {
  const LCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0), // Added padding for better spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // Stretch cards to fill width
        children: <Widget>[
          _buildCard(
            leading: const Icon(Icons.camera),
            title: 'Sample Card 1',
            subtitle: 'Default Elevation',
          ),
          const SizedBox(height: 16),
          _buildCard(
            leading: const Icon(Icons.camera),
            title: 'Sample Card 2',
            subtitle: 'Elevation - 8',
            elevation: 8,
          ),
          const SizedBox(height: 16),
          _buildCard(
            leading: const Icon(Icons.album),
            title: 'Sample Card 3',
            subtitle: 'Elevation - 16',
            elevation: 16,
          ),
          const SizedBox(height: 16),
          _buildCard(
            leading: const Icon(Icons.album),
            title: 'Sample Card 4',
            subtitle: 'Elevation - 24',
            elevation: 24,
            color: Colors.pink,
            shadowColor: Colors.yellow,
          ),
          const SizedBox(height: 32), // More space before the Stack
          _buildStackedCards(),
        ],
      ),
    );
  }

  Widget _buildCard({
    required Widget leading,
    required String title,
    required String subtitle,
    double? elevation,
    Color? color,
    Color? shadowColor,
  }) {
    return Card(
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }

  Widget _buildStackedCards() {
    return Stack(
      children: <Widget>[
        _buildCard(
          leading: const Icon(Icons.camera),
          title: 'Sample Card 1 in Stack',
          subtitle: 'Default Elevation',
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 8),
          child: _buildCard(
            leading: const Icon(Icons.camera),
            title: 'Sample Card 2 in Stack',
            subtitle: 'Elevation - 8',
            elevation: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
          child: _buildCard(
            leading: const Icon(Icons.album),
            title: 'Sample Card 3 in Stack',
            subtitle: 'Elevation - 16',
            elevation: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 48, 24, 24),
          child: _buildCard(
            leading: const Icon(Icons.album),
            title: 'Sample Card 4 in Stack',
            subtitle: 'Elevation - 24',
            elevation: 24,
          ),
        ),
      ],
    );
  }
}

/* ╔══════════════════════════════════════════╗
   ║               END OF FILE                ║
   ╚══════════════════════════════════════════╝ */''',
      imageUrl: 'assets/Card.jpg',
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
