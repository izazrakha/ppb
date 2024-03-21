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
      title: 'Praktikum 4',
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            // Column pertama
            Container(
              height: 250,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent,
                    ),
                    child: const Icon(Icons.person, size: 30),
                  ),
                  const SizedBox(height: 15),
                  // Nama
                  const Text(
                    "Izaz Rakha Anggara",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // NIM
                  const Text(
                    "21102096",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Mahasiswa",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            // Column kedua
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFEF4F3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Data Diri",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nama"),
                      Text("Izaz"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Kelas"),
                      Text("MM 2"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Program Studi"),
                      Text("Teknik Informatika"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dosen Wali"),
                      Text("SDT"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Angkatan"),
                      Text("2021"),
                    ],
                  ),
                ],
              ),
            ),
            // Column ketiga
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFEF4F3),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pusat Bantuan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bantuan"),
                      Image(image: AssetImage("assets/gambar1.png")),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Laporkan Masalah"),
                      Image(image: AssetImage("assets/gambar2.png")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget row({required MainAxisAlignment mainAxisAlignment, required List<Widget> children}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: children,
    );
  }
}
