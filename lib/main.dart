import 'package:flutter/material.dart';
import 'services/service_test.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('button pressed');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.mail), label: 'Mailbox'),
          NavigationDestination(icon: Icon(Icons.notifications), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            current_page = index;
          });
        },
        selectedIndex: current_page,
      ),
    );
  }
}
