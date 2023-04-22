import 'package:chatapp/models/user_model.dart';

class message {
  final user sender;
  final String time;
  final String text;
  final bool isliked;
  final bool unread;

  message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isliked,
    required this.unread,
  });
}

final user currentuser =
    user(id: 0, name: "current user", imageUrl: 'assets/images/hero.jpg');

final user hero = user(id: 1, name: "Hero", imageUrl: 'assets/images/hero.jpg');

final user kalu = user(id: 2, name: "Kalu", imageUrl: 'assets/images/kalu.jpg');

final user mike = user(id: 3, name: "Mike", imageUrl: 'assets/images/mike.jpg');

final user silva =
    user(id: 4, name: "Silva", imageUrl: 'assets/images/Silva.jpg');

final user takla =
    user(id: 5, name: "Takla", imageUrl: 'assets/images/takla.jpg');

final user vutto =
    user(id: 6, name: "Vutto", imageUrl: 'assets/images/vutto.jpg');

List<user> favorites = [mike, silva, kalu, vutto, hero];

List<message> chats = [
  message(
      sender: vutto,
      time: '3:00 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true),
  message(
      sender: takla,
      time: '1:00 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true),
  message(
      sender: silva,
      time: '3:10 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true),
  message(
      sender: mike,
      time: '3:04 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: false),
  message(
      sender: hero,
      time: '3:50 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true),
  message(
      sender: kalu,
      time: '3:00 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true)
];

List<message> messages = [
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
      sender: currentuser,
      time: '3:01 pm',
      text: 'Hey, How is it going?, what did you do today?',
      isliked: false,
      unread: true
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: true,
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: true,
    unread: true,
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '3:00 pm',
    text: 'Hey, How is it going?, what did you do today?',
    isliked: false,
    unread: true,
  ),
  message(
    sender: vutto,
    time: '3:00 pm',
    text: 'Hey, How is it going??',
    isliked: true,
    unread: true,
  ),
];
