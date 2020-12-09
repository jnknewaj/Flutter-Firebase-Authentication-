import 'package:authentication/presentation/profile/profile_page.dart';
import 'package:authentication/presentation/widgets/bilboard_text.dart';
import 'package:authentication/presentation/widgets/circular_image_holder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircularImageHolder(
                    imageUrl: 'https://www.w3schools.com/w3images/avatar6.png',
                    imageSize: 0.2,
                  ),
                  Text('John Doe'),
                  Text('johndoe@gmail.com'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: BilboardText(
        text: 'Error! SomeThing Went Wrong! Error! SomeThing Went Wrong!',
        textType: TextType.Warning,
      ),
    );
  }
}
