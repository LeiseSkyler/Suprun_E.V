import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = '';
  String birthDate = '';
  String phone = '';
  String email = '';
  String status = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              child: Icon(Icons.person, size: 140, color: Colors.white),
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 20),
            itemProfile('Имя', name, CupertinoIcons.person, (value) {
              setState(() {
                name = value;
              });
            }),
            const SizedBox(height: 10),
            itemProfile('Дата Рождения', birthDate, CupertinoIcons.calendar, (value) {
              setState(() {
                birthDate = value;
              });
            }),
            const SizedBox(height: 10),
            itemProfile('Телефон', phone, CupertinoIcons.phone, (value) {
              setState(() {
                phone = value;
              });
            }),
            const SizedBox(height: 10),
            itemProfile('Почта', email, CupertinoIcons.mail, (value) {
              setState(() {
                email = value;
              });
            }),
            const SizedBox(height: 20),
            itemProfile('Статус', status, CupertinoIcons.at_badge_plus, (value) {
              setState(() {
                status = value;
              });
            }),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Действия по сохранению изменений в профиле
                  print('Имя: $name');
                  print('Дата Рождения: $birthDate');
                  print('Телефон: $phone');
                  print('Почта: $email');
                  print('Статус: $status');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                ),
                child: const Text('Сохранить'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String value, IconData? icon, ValueChanged<String> onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) Icon(icon, size: 28),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                initialValue: value,
                decoration: InputDecoration(
                  hintText: 'Введите $title',
                  border: OutlineInputBorder(),
                ),
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ],
    );
  }
}