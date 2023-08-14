import 'package:flutter/material.dart';
import 'package:meeting_app/app/screens/sign_in/sign_in.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Title(
                color: Colors.black,
                child: Text(
                  "ໜ້າຫຼັກສຳລັບຈັດການການປະຊຸມ",
                  style: TextStyle(fontSize: 40),
                )),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignInPage();
                }));
              },
              child: Text("ກັບໄປ"),
            )
          ],
        ),
      ),
    );
  }
}
