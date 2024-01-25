import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
            'First Flutter Project',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.grey[200],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/prof-pic.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'John Doe',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$age',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[200],
                ),
                const SizedBox(width: 10),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
