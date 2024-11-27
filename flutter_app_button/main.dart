import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const Buttons(),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(10),
                //   ),
                // ),
                foregroundColor: Colors.black,
                //fixedSize: const Size(200, 30),
                //elevation: 0,
              ),
              child: const Text(
                'Elevated button',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.deepPurple,
                backgroundColor: const Color.fromARGB(255, 239, 223, 244),
              ),
              child: const Text('Text button'),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(10),
                //   ),
                // ),
                //fixedSize: const Size(250, 30),
              ),
              child: const Text('Outlined button'),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                //foregroundColor: Colors.black,
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(10),
                //   ),
                // ),
                fixedSize: const Size(150, 30),
              ),
              child: const Text('Filled button'),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 150,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.red], // 그라데이션 색상
                  //stops: [0.0, 1.0], // 각 색상의 위치
                ),
              ),
              child: const Text(
                'Filled button',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton.tonal(
              onPressed: () {},
              style: FilledButton.styleFrom(
                //foregroundColor: Colors.red,
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(10),
                //   ),
                // ),
                //fixedSize: const Size(150, 30),
                backgroundColor: Colors.teal,
              ),
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_rounded,
                size: 40,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Container(
            //   width: 80,
            //   height: 60,
            //   alignment: Alignment.center,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     border: Border(
            //       top: BorderSide(color: Colors.black, width: 2.0),
            //       right: BorderSide(color: Colors.purple, width: 2.0),
            //       bottom: BorderSide(color: Colors.blue, width: 2.0),
            //       left: BorderSide(color: Colors.yellow, width: 2.0),
            //     ),
            //     //borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: const Text("Box"),
            // )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {},
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.red,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
