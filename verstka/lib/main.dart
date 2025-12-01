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
          // МИНИМАЛЬНАЯ ЧАСТЬ: Container #1
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

          // МИНИМАЛЬНАЯ ЧАСТЬ: Row с 3 Text
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

          // МИНИМАЛЬНАЯ ЧАСТЬ: Container #2
          Container(
            width: double.infinity,
            height: 100,
            color: const Color(0xFFF5DEB3), // светло-бежевый
            child: const Center(
              child: Text(
                'Нижний контейнер',
                style: TextStyle(
                  color: Colors.black87, 
                  fontSize: 18, 
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),

          // ДОПОЛНИТЕЛЬНАЯ ЧАСТЬ: Expanded с Row и CircleAvatar
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF8B4513), // коричнево-винный
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // CircleAvatar #1 (разный radius, без изображения)
                  const CircleAvatar(
                    radius: 40, // меньший радиус
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xFF800000),
                    ),
                  ),
                  
                  // CircleAvatar #2 (большой radius + NetworkImage)
                  CircleAvatar(
                    radius: 60, // больший радиус
                    backgroundImage: const NetworkImage(
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop',
                    ),
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // ДОПОЛНИТЕЛЬНАЯ ЧАСТЬ: FloatingActionButton с onPressed
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF800000),
        foregroundColor: Colors.white,
        onPressed: () {
          // Вывод в консоль (видно в терминале flutter run)
          print('Button pressed!');
          
          // SnackBar для пользователя
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Color(0xFF800000),
              content: Text(
                'Кнопка нажата!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
