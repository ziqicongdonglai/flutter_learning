import 'package:flutter/material.dart';
import 'package:wrapper/wrapper.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        elevation: 0,
        title: const Text('聊天列表'),
      ),
      body: ListView(
        children: [
          ChatItem(
            message: Message(
              content: '22:01',
              type: MessageType.time,
            ),
          ),
          ChatItem(
            message: Message(
                content: 'hello，准备好学习 Flutter 布局了吗？',
                type: MessageType.left,
                imageUrl: 'images/avatar2.jpg'),
          ),
          ChatItem(
            message: Message(
                content: '准备好了！',
                username: 'zk',
                type: MessageType.right,
                imageUrl: 'images/avatar.jpg'),
          ),
          ChatItem(message: Message(content: '22:05', type: MessageType.time)),
          ChatItem(
            message: Message(
                content: '好好学习布局知识',
                username: '酱油',
                type: MessageType.left,
                imageUrl: 'images/avatar3.png'),
          ),
          ChatItem(
            message: Message(
                content: '赞赞赞👍',
                username: 'op',
                type: MessageType.left,
                imageUrl: 'images/avatar4.jpg'),
          ),
          ChatItem(message: Message(content: '22:07', type: MessageType.time)),
          ChatItem(
            message: Message(
                content: '加油！！！',
                type: MessageType.left,
                imageUrl: 'images/avatar2.jpg'),
          ),
        ],
      ),
    );
  }
}

enum MessageType { left, right, time }

class Message {
  final String content;
  final String? imageUrl;
  final String? username;
  final MessageType type;

  Message(
      {required this.content,
      this.imageUrl,
      this.username,
      required this.type});
}

class ChatItem extends StatelessWidget {
  final Message message;

  const ChatItem({Key? key, required this.message}) : super(key: key);

  bool get isLeft => message.type == MessageType.left;

  EdgeInsets get contentPadding => isLeft
      ? const EdgeInsets.only(left: 15, right: 40 + 15, top: 5, bottom: 5)
      : const EdgeInsets.only(left: 40 + 15, right: 15, top: 5, bottom: 5);

  EdgeInsets get iconPadding =>
      isLeft ? const EdgeInsets.only(right: 5) : const EdgeInsets.only(left: 5);

  Color get panelColor => isLeft ? Colors.white : const Color(0xff96EC6D);

  TextDirection get textDirection =>
      isLeft ? TextDirection.ltr : TextDirection.rtl;

  SpineType get spineType => isLeft ? SpineType.left : SpineType.right;

  Widget _buildTime() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          message.content,
          style: const TextStyle(fontSize: 12, color: Color(0xff969696)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (message.type == MessageType.time) {
      return _buildTime();
    }

    return Padding(
      padding: contentPadding,
      child: Row(
        textDirection: textDirection,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildIcon(), Flexible(child: _buildContent())],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.only(top: message.username == null ? 3 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (message.username != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
              child: Text(
                message.username!,
                style: const TextStyle(color: Color(0xff969696), fontSize: 12),
              ),
            ),
          Wrapper(
            spineType: spineType,
            elevation: 5,
            spineHeight: 6,
            shadowColor: Colors.grey.withOpacity(0.3),
            offset: 12,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            color: panelColor,
            child: Text(
              message.content,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      height: 40,
      width: 40,
      margin: iconPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: DecorationImage(
            image: AssetImage(
              message.imageUrl ?? '',
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
