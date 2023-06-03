import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class Home extends StatelessWidget {
  final List _namesub = [
    'Hello good morning\u{1F600}\u2764',
    "Good mrng mahn\u2600\u2600\u2600",
    "Don't call me\u{1F621}\u{1F621}\u{1F621}\u{1F494}\u{1F494}\u{1F494}",
    "don't forget to take lunch son\u{1F371}\u2764\u2764\u2764",
    "Hey,don't forget evening at turf\u26BD\u26BD\u26BD",
    "I am at manalii\u{1F3CD}\u{1F3CD}\u26F0\u26F0",
    "Happy birthday buddy\u{1F382}\u{1F382}\u{1F382}\u{1F389}\u{1F389}\u{1F389}",
    "Hello david tommorrow we have a client meeting\u{1F4BC}\u{1F4BC}\u{1F4BC}",
    "Where are you now buddy\u2753\u2753\u2753",
  ];

  final List _name = [
    "John",
    "Christy",
    "Crush",
    "Mom",
    "Justin",
    "Bibin",
    "Nabeel",
    "Boss",
    "Crystal",
  ];

  final List _time = [
    "12:00 pm",
    "10:20 am",
    "9:00 am",
    "8 : 50 am",
    "8 :30 am",
    "8 :20 am",
    "7 :30 am",
    "8 :20 am",
    "8 :10 am",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Justin Thomas "),
                accountEmail: Text("thomasjustin2203@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/justin.jpg'),
                ),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 36, 190, 165))),
            ListTile(
              title: const Text("Profile"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
            ListTile(
              title: const Text("New Group"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.group,
                  color: Color.fromARGB(255, 36, 190, 165),
                ),
              ),
            ),
            ListTile(
              title: const Text("Calls"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
            ListTile(
              title: const Text("Settings"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
            ListTile(
              title: const Text("invite Friends"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
            ListTile(
              title: const Text("Dash Board"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.dashboard,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
            ListTile(
              title: const Text("Signout"),
              textColor: Color.fromARGB(255, 36, 190, 165),
              leading: IconButton(
                  onPressed: () {
                    signout(context);
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 36, 190, 165),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 190, 165),
        title: Text('Home'),
        actions: [
          Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
        ],
      ),

//chat section.//

      body: Container(
        child: ListView.separated(
            separatorBuilder: ((context, index) => const Divider(
                  thickness: 3,
                  color: Color.fromARGB(255, 36, 190, 165),
                )),
            itemCount: _name.length,
            itemBuilder: (context, index) => Container(
                  child: ListTile(
                    title: Text(_name[index]),
                    subtitle: Text(_namesub[index]),
                    leading: index.isOdd
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset('images/male.jpg'))
                        : const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/female.jpg'),
                          ),
                    trailing: Text(_time[index]),
                  ),
                )),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedprefs = await SharedPreferences.getInstance();
    await _sharedprefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LoginPage()), (route) => false);
  }
}
