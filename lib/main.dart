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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController conBilangan1 = TextEditingController();
  TextEditingController conBilangan2 = TextEditingController();
  TextEditingController conHasil = TextEditingController();

  void reset() {
    setState(() {
      conBilangan1.clear();
      conBilangan2.clear();
      conHasil.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OPERATOR ARITMATIKA'),
        backgroundColor: const Color.fromARGB(255, 74, 43, 187),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: conBilangan1,
              decoration: const InputDecoration(
                labelText: 'Bilangan 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: conBilangan2,
              decoration: const InputDecoration(
                labelText: 'Bilangan 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: conHasil,
              decoration: const InputDecoration(
                labelText: 'HASIL',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    int bilangan1 = int.tryParse(conBilangan1.text) ?? 0;
                    int bilangan2 = int.tryParse(conBilangan2.text) ?? 0;
                    int hasil = bilangan1 + bilangan2;
                    // Menetapkan hasil ke TextEditingController
                    conHasil.text = hasil.toString();
                  },
                  child: const Text("Tambah"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    int bilangan1 = int.tryParse(conBilangan1.text) ?? 0;
                    int bilangan2 = int.tryParse(conBilangan2.text) ?? 0;
                    int hasil = bilangan1 - bilangan2;

                    // Menetapkan hasil ke TextEditingController
                    conHasil.text = hasil.toString();
                  },
                  child: const Text("Kurang"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    int bilangan1 = int.tryParse(conBilangan1.text) ?? 0;
                    int bilangan2 = int.tryParse(conBilangan2.text) ?? 0;
                    int hasil = bilangan1 * bilangan2;

                    // Menetapkan hasil ke TextEditingController
                    conHasil.text = hasil.toString();
                  },
                  child: const Text("Kali"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    int bilangan1 = int.tryParse(conBilangan1.text) ?? 0;
                    int bilangan2 = int.tryParse(conBilangan2.text) ?? 0;
                    double hasil = bilangan1 / bilangan2;

                    // Menetapkan hasil ke TextEditingController
                    conHasil.text = hasil.toString();
                  },
                  child: const Text("Bagi"),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: reset,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
