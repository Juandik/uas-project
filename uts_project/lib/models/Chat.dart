class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Richard",
    lastMessage: "Lagi Ngapain Bro?",
    image: "images/person_icon.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Juan",
    lastMessage: "Mabar bro",
    image: "images/person_icon.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Rakha",
    lastMessage: "besok ada tugas ga?",
    image: "images/person_icon.png",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Davin",
    lastMessage: "Mabar gas",
    image: "images/user_4.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Ruby",
    lastMessage: "Thanks ya",
    image: "images/user_5.png",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Calvin",
    lastMessage: "Ketemuan yuk",
    image: "images/user.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Aldi",
    lastMessage: "Mabar bro",
    image: "images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Icad",
    lastMessage: "mantap bro",
    image: "images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
];