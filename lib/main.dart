import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sonar Flutter Example App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Like sonar-flutter plugin?'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _launchUrl(Uri.parse(
                    'https://github.com/insideapp-oss/sonar-flutter'));
              },
              child: const Text('Give it a star on GitHub'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _launchUrl(
                    Uri.parse('https://github.com/sponsors/insideapp-oss'));
              },
              child: const Text('Sponsor us on GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
