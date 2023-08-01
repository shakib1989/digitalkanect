import 'package:flutter/material.dart';
import 'package:styles/theme/theme_texts.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ThemeTexts.primary.headlineSmall(
              context: context,
              text: 'Chat Coming Soon'
          ),
        ],
      ),
    );

  }
}
