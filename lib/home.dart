// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'login.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Home'),
//           centerTitle: true,
//           backgroundColor: Color.fromARGB(255, 36, 190, 165),
//           actions: [
//             IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//             IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
//           ],
//           shape: RoundedRectangleBorder(
//               // borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
//               ),
//           elevation: 30,
//         ),
//         drawer: Drawer(
//           backgroundColor: Colors.white,
//           child: ListView(
//             children: [
//               UserAccountsDrawerHeader(
//                 accountName: Text("Justin Thomas"),
//                 accountEmail: Text("thomasjustin2203@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: AssetImage('images/justin.jpg'),
//                 ),
//                 decoration:
//                     BoxDecoration(color: Color.fromARGB(255, 36, 190, 165)),
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.person,
//                   color: Color.fromARGB(255, 36, 190, 165),
//                 ),
//                 title: Text(
//                   'Profile',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 textColor: Color.fromARGB(255, 36, 190, 165),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.settings,
//                   color: Color.fromARGB(255, 36, 190, 165),
//                 ),
//                 title: Text(
//                   'Settings',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 textColor: Color.fromARGB(255, 36, 190, 165),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.dashboard,
//                   color: Color.fromARGB(255, 36, 190, 165),
//                 ),
//                 title: Text(
//                   'Dash Board',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 textColor: Color.fromARGB(255, 36, 190, 165),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: IconButton(
//                   onPressed: () {
//                     Signout(context);
//                   },
//                   icon: Icon(
//                     Icons.logout,
//                     color: Color.fromARGB(255, 36, 190, 165),
//                   ),
//                 ),
//                 title: GestureDetector(
//                   onTap: () {
//                     Signout(context);
//                   },
//                   child: Text(
//                     'Sign Out',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 textColor: Color.fromARGB(255, 36, 190, 165),
//                 onTap: () {},
//               )
//             ],
//           ),
//         ),
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Justin Thomas"),
//                       subtitle: Text('20 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/justin2.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text('Life at Brocamp!!!!!......'),
//                       subtitle: Text(
//                         '#Brocamp#Calicut#kinfra',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/br.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Bibin Kb"),
//                       subtitle: Text('28 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/bibin.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text(
//                           'Chasing the dream is also a passion!!!!!......'),
//                       subtitle: Text(
//                         '#Brototype#Kinfra#calicut',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/bibin.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Christy Thomas"),
//                       subtitle: Text('25 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/christy.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text('Exploring the beauty of Palchuram...'),
//                       subtitle: Text(
//                         '#palchuram#wayanad#kannur',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/churam.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Muhammed Nabeel"),
//                       subtitle: Text('45 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/Nabeel1.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text(
//                           'Morning vibe at kottiyoor wildlife sanctuary....'),
//                       subtitle: Text(
//                         '#Kottiyoor#Nedumpoi#kannur#kerala',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/wildlife.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("M Ali Haninsha"),
//                       subtitle: Text('9 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/Ali1.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text('Finally I acheived it...'),
//                       subtitle: Text(
//                         '#Morbiusgamming#bgmi#callofduty',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/gaming room.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 elevation: 10,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Prasad"),
//                       subtitle: Text('10 minutes ago'),
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('images/parsad1.jpg'),
//                       ),
//                       trailing: Icon(Icons.more_vert),
//                     ),
//                     ListTile(
//                       title: Text('My home town......'),
//                       subtitle: Text(
//                         '#tippufort#palakkad#naturalbeauty',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                     Image.asset('images/Palakkad_Tipu_Fort.jpg'),
//                     Row(
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_up,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.thumb_down,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.share,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.comment,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                         Spacer(),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.bookmark_border_outlined,
//                               color: Color.fromARGB(255, 36, 190, 165),
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Color.fromARGB(255, 36, 190, 165),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           onPressed: () {},
//           child: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.add),
//           ),
//         ),
//       ),
//     );
//   }

//   Signout(BuildContext ctx) async {
//     final _sharedPrefs = await SharedPreferences.getInstance();
//     await _sharedPrefs.clear();

//     Navigator.of(ctx).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (ctx1) => LoginPage()), (route) => false);
//   }
// }
