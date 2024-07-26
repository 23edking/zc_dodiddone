import 'package:flutter/material.dart';
import 'package:zc_dodiddone/theme/theme.dart'; // Импортируем файл с темой

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // Задачи
    const Center(child: Text('Задачи')),
    // Сегодня
    const Center(child: Text('Сегодня')),
    // Профиль
    const Center(child: Text('Профиль')),
    // Выполнено
    const Center(child: Text('Выполнено')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Делаем фон AppBar прозрачным
        elevation: 0, // Убираем тень от AppBar
      ),
      body: Container( // Добавляем Container для градиента
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              DoDidDoneTheme.lightTheme.colorScheme.primary, // Основной цвет
              DoDidDoneTheme.lightTheme.colorScheme.secondary, // Вторичный цвет
            ],
          ),
        ),
        child: _screens[_selectedIndex], // Отображаем экран, соответствующий выбранной вкладке
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent, // Делаем фон BottomNavigationBar прозрачным
        elevation: 0, // Убираем тень от BottomNavigationBar
        currentIndex: _selectedIndex, // Текущий выбранный индекс
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Обновляем выбранный индекс при нажатии
          });
        },
        type: BottomNavigationBarType.fixed, // Используем фиксированный размер для стабильности
        selectedItemColor: DoDidDoneTheme.lightTheme.colorScheme.primary, // Основной цвет для выбранных иконок
        unselectedItemColor: Colors.grey, // Серый цвет для невыбранных иконок
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Задачи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Сегодня',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Выполнено',
          ),
        ],
      ),
    );
  }
}
