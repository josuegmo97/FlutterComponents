import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stan Lee"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: const Text("SL"),
              backgroundColor: Colors.green[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage:
              NetworkImage("https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg"),
          maxRadius: 110,
        ),
      ),
    );
  }
}
