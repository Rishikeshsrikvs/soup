import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final List<String> languages = [
    'Azerbaycanca',
    'Eesti',
    'English',
    'Hrvatski',
    'Latvisu',
    'Lietuviu',
    'Magyar',
    'Polski',
    'Portugues',
    'Romana',
    'Slovencina',
    'Svenska',
  ];

  String selectedLanguage = 'English'; // Default selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA4D40E),
      appBar: AppBar(
        backgroundColor: Color(0xFFA4D40E),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Language', style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedLanguage = languages[index]; // Update selected language
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: selectedLanguage == languages[index]
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                languages[index],
                style: TextStyle(
                  color: selectedLanguage == languages[index]
                      ? Colors.white
                      : Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
