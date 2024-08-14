import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,  // Bold text
              ),
            ),
            SizedBox(height: 10.0),  // Space between title and subtitle
            // Subtitle
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18.0,  //font size
                fontStyle: FontStyle.italic,  // Italic text
              ),
            ),
            SizedBox(height: 20.0),  // Space between subtitle and button
            TextButton(
              onPressed: () {
                //Snackbar on button press
                final snackBar = SnackBar(
                  content: Text('You clicked the button!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20.0),  // Space between button and welcome text
            RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF309DF4),  // Flutter Color
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
