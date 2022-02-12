import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //     primary: Colors.indigo,
                //     shape: const StadiumBorder(),
                //     elevation: 0),
                onPressed: () {
                  displayDialogAndroid(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Show Alert for Android",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  displayDialogIOS(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Show Alert for IOS",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (builder) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text("Title"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is the content of the alert in Android"),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 80,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel")),
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (builder) {
          return CupertinoAlertDialog(
             title:  const Text("Title"),
             content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is the content of the alert in IOS"),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 80,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel", style: TextStyle(color: Colors.red),)),
                  TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok")),
            ],
          );
        });
  }
}
