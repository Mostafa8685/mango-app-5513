import 'package:flutter/material.dart';

void main() => runApp(const AzkarApp());

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيق مانجو',
      theme: ThemeData.dark(useMaterial3: true),
      home: const AzkarHome(),
    );
  }
}

class AzkarHome extends StatefulWidget {
  const AzkarHome({super.key});

  @override
  State<AzkarHome> createState() => _AzkarHomeState();
}

class _AzkarHomeState extends State<AzkarHome> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('تطبيق مانجو')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("سبحان الله وبحمده، سبحان الله العظيم", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 18),
              Text("$_count", style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.amber)),
              const SizedBox(height: 18),
              ElevatedButton.icon(
                onPressed: () => setState(() => _count++),
                icon: const Icon(Icons.touch_app),
                label: const Text("تسبيح"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
