import 'package:flutter/material.dart';

import 'leader_board_screen.dart';

class LeaderBoardItemWidget extends StatefulWidget {
  const LeaderBoardItemWidget({super.key, required this.user});

  final LeaderBoardData user;

  @override
  State<LeaderBoardItemWidget> createState() => _LeaderBoardItemWidgetState();
}

class _LeaderBoardItemWidgetState extends State<LeaderBoardItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (widget.user.isOpened) {
            widget.user.isOpened = false;
          } else {
            widget.user.isOpened = true;
          }
          setState(() {});
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Text(widget.user.id),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.user.title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return SizeTransition(
                        sizeFactor: animation,
                        child: child,
                      );
                    },
                    child: widget.user.isOpened
                        ? Text(
                            key: ValueKey('content'),
                            widget.user.content,
                          )
                        : SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(widget.user.percentage),
                SizedBox(width: 5),
                Icon(
                  widget.user.isOpened
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_right_rounded,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
