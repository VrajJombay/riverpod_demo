import 'package:flutter/material.dart';

import 'leader_board_item_widget.dart';

class LeaderBoardScreen extends StatefulWidget {
  LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  List<LeaderBoardData> leaderBoardList = [
    LeaderBoardData(
      id: '1',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '2',
      title: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '3',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
    LeaderBoardData(
      id: '4',
      title: 'abcfjescsc',
      percentage: '100%',
      content: 'asdfdsafdgafdgFDGAJFKDGLKJNBAFKJDGBAHFDDAHJJ,HAJVJNFKDJNVkjNV',
      isOpened: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LeaderBoard'),
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: leaderBoardList.length,
          itemBuilder: (context, index) {
            final user = leaderBoardList[index];
            return LeaderBoardItemWidget(
              user: user,
            );
          },
        ),
      ),
    );
  }
}

class LeaderBoardData {
  final String id;
  final String title;
  final String percentage;
  final String content;
  bool isOpened = false;

  LeaderBoardData({
    required this.id,
    required this.title,
    required this.percentage,
    required this.content,
    required this.isOpened,
  });
}
