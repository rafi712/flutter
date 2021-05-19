// import 'dart:html';
// import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter_coba/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              // buildCard(Icons.contact_mail, 'Contact List', Colors.orange[300]),
              // buildCard(Icons.settings, 'Setting', Colors.grey),
              buildCard(Icons.image, 'Gallery', Colors.blue),
              buildCard2(),
              buildCard3(),
              // Row(
              //   children: [
              //     Flexible(child: buildCard4(), flex: 1,),
              //     Flexible(child: buildCard4(), flex: 1,),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard4() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        child: Column(
          children: [
            Icon(
              Icons.restaurant_menu_outlined,
              color: Colors.grey,
            ),
            Text(
              'Our Menu',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Card buildCard3() {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image:
                      NetworkImage('https://picsum.photos/id/1011/5472/3648'),
                  height: 240,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Card with Image',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
              child: Text(
                'lorem ipsu sldkjsd sdsaufk  dkjsiir s ksdjfsidfjslkj lorem ipsu sldkjsd sdsaufk  dkjsiir s ksdjfsidfjslkj klsdjfk kj ksdjk ks kj jsdkj f',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(onPressed: () {}, child: Text('My Journey')),
                TextButton(onPressed: () {}, child: Text('My Journey')),
              ],
            )
          ],
        ));
  }

  Card buildCard2() {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        elevation: 3,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://picsum.photos/id/0/5616/3744?grayscale'),
              height: 240,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
              ),
            ),
            Text(
              'Card with Image',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24),
            )
          ],
        ));
  }

  Card buildCard(IconData icondata, String text, Color color) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Container(
              // width: double.maxFinite,
              margin: EdgeInsets.all(7),
              child: Icon(
                icondata,
                color: color,
              ),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}

// ===================
// Gradation Appbar
// ===================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.menu, color: Colors.white,),
//           title: Text('Gradation Appbar', style: TextStyle(color: Colors.white)),
//           actions: [
//             IconButton(icon: Icon(Icons.settings), onPressed: (){}),
//             IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){}),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                 begin: FractionalOffset.topLeft,
//                 end: FractionalOffset.bottomRight
//               ),
//               // image: DecorationImage(
//               //   image: AssetImage("assets/pattern.jpg"),
//               //   fit: BoxFit.scaleDown,
//               //   repeat: ImageRepeat.repeat)
//             ),
//           ),
//         )
//       ),
//     );
//   }
// }

// ==================
// Navigation
// ==================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// =================
// Draggable
// =================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color color2 = Colors.red[100];
//   Color color1 = Colors.orange[300];
//   Color targetColor = Colors.grey;
//   bool isAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Draggable'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Draggable<Color>(
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                 ),
//                 Draggable<Color>(
//                   data: color2,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color2.withOpacity(0.5),
//                       shape: StadiumBorder(),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             DragTarget<Color>(
//               onWillAccept: (value) => true,
//               onAccept: (value) {
//                 isAccepted = true;
//                 targetColor = value;
//               },
//               builder: (context, candidates, rejected) {
//                 return (isAccepted)
//                     ? SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: targetColor,
//                           shape: StadiumBorder(),
//                         ))
//                     : SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: Colors.grey,
//                           shape: StadiumBorder(),
//                         ),
//                       );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// =========================
// Stack dan Align
// =========================

// class MyApp extends StatelessWidget {
//   List<Widget> containers;

//   MyApp() {
//     for (var i = 0; i < 30; i++) {
//       containers.add(Container(
//         margin: EdgeInsets.all(15),
//         child: Text(
//           'Flexibleflex: 1, child: Containercolor: Colors.black12',
//           style: TextStyle(fontSize: 20),
//         ),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('Stack Widget'),
//       ),
//       body: Stack(children: [
//         Column(
//           children: [
//             Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         color: Colors.black12,
//                       ),
//                     ),
//                     Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white,
//                         ))
//                   ],
//                 )),
//             Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ))
//                   ],
//                 )),
//           ],
//         ),
//         ListView(
//           children: [
//             Column(
//               children: containers,
//             ),
//           ],
//         ),
//         Align(
//             alignment: Alignment(0, 0.75),
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text('Press Me'),
//             ))
//       ]),
//     ));
//   }
// }

// ==============
// image
// ==============

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Image'),),
//         body: Center(
//           child: Image.network(
//             'https://picsum.photos/200/200',
//             width: 200,
//             height: 200,
//           ),
//         ),
//       ),
//     );
//   }
// }

// ====================
// Inputs
// ====================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String _name = '';
//   bool lightOn = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Inputs'),
//         ),
//         body: Center(
//           child: Container(
//             width: 250,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('Your name: ' + _name),
//                 TextField(
//                   decoration: InputDecoration(
//                       labelText: 'Your Name',
//                       hintText: 'Write your name here...'),
//                   onChanged: (String value) {
//                     setState(() {
//                       _name = value;
//                     });
//                   },
//                 ),
//                 Switch(
//                   value: lightOn,
//                   onChanged: (bool value) {
//                     setState(() {
//                       lightOn = value;
//                     });
//                   }
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: null,
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//           title: Text('First Screen'),
//           actions: <Widget>[
//             IconButton(
//               onPressed: null,
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         body: Center(
//           child: Text('Hello World'),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: null,
//             child: Icon(Icons.add),
//           ),
//       ),
//     );
//   }
// }

// ========================
// Flexible Widget
// ========================

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flexible Widget'),),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.red,
//                     )
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.cyan,
//                     )
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.teal,
//                     )
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 color: Colors.green,
//               )
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 color: Colors.yellow,
//               )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ====================
// Gesture Detector
// ====================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Animated Container'),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {

//               });
//             },
//             child: AnimatedContainer(
//               color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ===================
// List Style
// ===================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List View'),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       widgets.add(Text(
//                         'Data ke-' + counter.toString(),
//                         style: TextStyle(fontSize: 35),
//                       ));
//                       counter++;
//                     });
//                   },
//                   child: Text('Tambah Data')),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   },
//                   child: Text('Hapus Data')),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: widgets,
//           )
//         ]),
//       ),
//     );
//   }
// }

// =======================
// Anonymous method
// =======================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = 'Ini adalah teks';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Anonymous Method ')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               ElevatedButton(
//                 onPressed: () {
//                    setState(() {
//                       message = 'Tombol sudah ditekan';
//                   });
//                 },  child: Text('Tekan Saya')
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// =============================
// Stateful widget
// =============================

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   void tekanTombol() {
//     setState(() {
//       number++;
//     });
//   }

//   void reset() {
//     setState(() {
//       number = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(
//           appBar: AppBar(title: Text('Stateful Widget Demo')),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   number.toString(),
//                   style: TextStyle(fontSize: 16 + number.toDouble()),
//                 ),
//                 ElevatedButton(
//                     onPressed: tekanTombol,
//                     child: Text('Tekan untuk menambah angka')
//                 ),
//                 OutlinedButton(onPressed: reset, child: Text('Reset'))
//               ],
//             ),
//           )
//       )
//     );
//   }
// }
