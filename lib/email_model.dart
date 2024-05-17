class Email {
  final String sender;
  final String subject;
  final String body;
  bool isFavourite;

  Email({
    required this.sender,
    required this.subject,
    required this.body,
    this.isFavourite = false,
  });
}
