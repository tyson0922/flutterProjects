import 'package:flutter/material.dart';
import 'package:flutter_app_navigator_ex/main.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page B'),
        centerTitle: true,
        automaticallyImplyLeading: false, // 뒤로 가기 버튼 생성 방지
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page B screen',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (Route<dynamic> route) => false, // 스택에 있는 모든 라우트를 제거
                );
              },
              child: const Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}