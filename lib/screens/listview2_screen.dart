import 'dart:developer';

import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 2"),
          // elevation: 0,
          // backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                onTap: () {
                  final game = options[index];
                  // ignore: avoid_print
                  log(game);
                },
                trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
                leading: const Icon(Icons.add_reaction_outlined)),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
