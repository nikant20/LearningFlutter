import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x00ffe6ff),
        leading: const Icon(Icons.arrow_back,),
        actions: const [
          Icon(Icons.logout)
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0x00ffe6ff),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                  "assets/images/profile_pic.jpg",
                  alignment: Alignment.center,
                  width: 150,
                  height: 150,
                  fit: BoxFit.fill),
            ),
            const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Nikant Chaudhary',
                  style: TextStyle(
                    fontFamily: 'Playwrite',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold

                  ),
                  textAlign: TextAlign.center,
                )
            ),
            const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '@nikant20',
                  style: TextStyle(
                      fontFamily: 'Playwrite',
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal

                  ),
                  textAlign: TextAlign.center,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0x00ffe6ff),
                        side: BorderSide(color: Colors.black,width: 1)
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontFamily: 'Playwrite',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                    )
                )
            ),
            const ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Verification'),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Refer Friends'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats")
          ],
      ),
    );
  }
}
