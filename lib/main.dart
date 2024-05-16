import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/providers/chat_provider.dart';
import 'presentation/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChatProvider()
        )
      ],
      child: MaterialApp(
        title: 'YES_NO App',
        debugShowCheckedModeBanner: false,
        theme: Apptheme(selectedColor:1).theme(),
        home: const ChatScreen()
      ),
    );
  }
}