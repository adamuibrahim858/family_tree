import 'package:flutter/material.dart';

import 'screens/chats/chats_screen.dart';
import 'screens/documentaries/documentaries_screen.dart';
import 'screens/events/events_screen.dart';
import 'screens/galleries/galleries_screen.dart';
import 'screens/histories/histories_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/notifications/notifications_screen.dart';
import 'screens/persons/persons_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/tree/tree_screen.dart';

void main() {
  runApp(const SalmanFamilyApp());
}

class SalmanFamilyApp extends StatelessWidget {
  const SalmanFamilyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salman Family',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D6A4F),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7FAF8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF7FAF8),
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/persons': (context) => const PersonsScreen(),
        '/histories': (context) => const HistoriesScreen(),
        '/documentaries': (context) => const DocumentariesScreen(),
        '/events': (context) => const EventsScreen(),
        '/galleries': (context) => const GalleriesScreen(),
        '/chats': (context) => const ChatsScreen(),
        '/tree': (context) => const TreeScreen(),
        '/notifications': (context) => const NotificationsScreen(),
      },
    );
  }
}
