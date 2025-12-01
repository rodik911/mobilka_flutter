import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа №1',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: const Color(0xFFF5F5DC), // бежевый фон
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF800000), // винный цвет
        title: const Text(
          'Flutter Лабораторная №1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // 1. ПЕРВЫЙ Container (width, height, color)
          Container(
            width: double.infinity,
            height: 150,
            color: const Color(0xFF800000), // темно-винный
            child: const Center(
              child: Text(
                'Базовый UI макет',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 22, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          // 2. Row с ТРЁМЯ Text (mainAxisAlignment: spaceEvenly)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Текст 1', 
                  style: TextStyle(fontSize: 18, color: Colors.black87)
                ),
                Text(
                  'Текст 2', 
                  style: TextStyle(fontSize: 18, color: Colors.black87)
                ),
                Text(
                  'Текст 3', 
                  style: TextStyle(fontSize: 18, color: Colors.black87)
                ),
              ],
            ),
          ),

          // 3. ВТОРОЙ Container (width, height, color)
          Container(
            width: double.infinity,
            height: 200,
            color: const Color(0xFFF5DEB3), // светло-бежевый
            child: const Center(
              child: Text(
                'Нижний контейнер',
                style: TextStyle(
                  color: Colors.black87, 
                  fontSize: 20, 
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
