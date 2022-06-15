import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage:
                  AssetImage('images/Star Wars_ Dark Side (1920x1080).jpg'),
            ),
            Text(
              "Aom",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.teal.shade200,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("09-1404-9834"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("nuntawat@gmail.com"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contactus',
                    arguments: Profile(name: "nuntawat", email: "test"));
              },
              child: Text("Contact"),
            )
          ],
        ),
      ),
    );
  }
}

class Profile {
  String name;
  String email;
  Profile({required this.name, required this.email});
}
