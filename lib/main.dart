// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainApp(),
      theme: ThemeData(useMaterial3: true),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentScreen = 0;

  final List<Widget> screens = [
    const emailscr(),
    const user(),
    const middleb(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          screens[currentScreen],
          Stack(
            children: [
              buildCustomNavigationBar(),
              addon(),
            ],
          ),
        ],
      ),
    );
  }
  //this is the custom nav bar i built

  Widget addon() {
    return Positioned(
      bottom: 50,
      left: 150,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.red,
        ),
        child: buildNavigationBarItem('ui/Swap.png', 2),
      ),
    );
  }

  Widget buildCustomNavigationBar() {
    return Positioned(
      child: Column(
        children: [
          const SizedBox(
            height: 550,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffdedbdb),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavigationBarItem('ui/Dm.png', 0),
                buildNavigationBarItem('ui/user.png', 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavigationBarItem(String imagePath, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          currentScreen = index;
        });
      },
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(10),
        child: Image.asset(imagePath),
      ),
    );
  }
}

//the screen widgets
class emailscr extends StatelessWidget {
  const emailscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListTile(
          title: const Text('Mum'),
          subtitle: const Text('how are you doing'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ),
        ListTile(
          title: const Text('Big sis'),
          subtitle: const Text('where should i send it ?'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ),
      ],
    ));
  }
}

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('ui/Swap.png'),
          ),
        ],
      ),
    );
  }
}

class middleb extends StatelessWidget {
  const middleb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ListTile(
            title: Text('Mum'),
          ),
          ListTile(
            title: Text('Big sis'),
          ),
          ListTile(
            title: Text('Fam'),
          ),
          ListTile(
            title: Text('Bestest'),
          ),
          ListTile(
            title: Text('Mimi'),
          ),
          ListTile(
            title: Text('Lil sis'),
          ),
          ListTile(
            title: Text('Ozi'),
          ),
          ListTile(
            title: Text('Dadistic'),
          ),
        ],
      ),
    );
  }
}
