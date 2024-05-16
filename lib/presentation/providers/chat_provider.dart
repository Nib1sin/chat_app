import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola babe', imageUrl: null, fromWho: FromWho.mine),
    Message(text: 'Ya regresaste del Trabajo?', imageUrl: null, fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async {

    if(text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.mine, imageUrl: null);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBotton();
  }

  Future<void> moveScrollToBotton() async{
    await Future.delayed(const Duration(microseconds: 150));
    
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
      );
  }
}