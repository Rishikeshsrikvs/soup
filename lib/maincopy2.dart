// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnboardingScreen(),
//     );
//   }
// }

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             children: [
//               OnboardingPage(
//                 title: 'Place orders with your favourite stores.',
//                 imagePath: 'assets/image1.png', // First image

//               ),
//               OnboardingPage(
//                  title: 'Choose from a wide range of delicious meals.',
//                 imagePath: 'assets/image2.png', // Second image
               
//               ),
//               OnboardingPage(
//                 title:'Enjoy instant delivery and payment',
//                 imagePath: 'assets/image3.png', // Third image
               
//                 isFinalPage: true,
//               ),
//             ],
//           ),
//           Positioned(
//             bottom: 40,
//             left: 20,
//             right: 20,
//             child: Column(
              
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     buildIndicator(currentIndex == 0),
//                     buildIndicator(currentIndex == 1),
//                     buildIndicator(currentIndex == 2),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (currentIndex < 2) {
//                       _pageController.nextPage(
//                         duration: Duration(milliseconds: 300),
//                         curve: Curves.easeIn,
//                       );
//                     } else {
//                       // Navigate to another screen when onboarding is complete
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (_) => HomeScreen()),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.lightGreen,
//                     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
//                      shape: RoundedRectangleBorder( // Remove rounded corners
//                         borderRadius: BorderRadius.circular(15.0), // Set borderRadius to 0 for sharp corners
//                       ),
//                   ),
//                   child: Text(
//                     currentIndex == 2 ? 'Get Started' : 'Next',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (_) => HomeScreen()),
//                     );
//                   },
//                   child: Text(
//                     'Skip',
//                     style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildIndicator(bool isActive) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 4.0),
//       width: isActive ? 12.0 : 8.0,
//       height: isActive ? 12.0 : 8.0,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isActive ? Colors.green : Colors.grey,
//       ),
//     );
//   }
// }

// class OnboardingPage extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final bool isFinalPage;

//   OnboardingPage({required this.imagePath, required this.title, this.isFinalPage = false});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
        
//         children: [
//           SizedBox(height: 80),
//             Image.asset(
//           'assets/image.png', // Load splash image
//           width: 200, 
//           height: 200, // Adjust size of the image
//         ),
//            SizedBox(height: 10),
         
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//               SizedBox(height: 20),
//           Image.asset(
//             imagePath,
//             height: 300,
//           ),
         
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: Center(child: Text('Welcome to the Home Screen!')),
//     );
//   }
// }