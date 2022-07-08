class Campaign {
  Campaign(this.title_donation, this.cost, this.remember, this.imageUrll,
      this.type, this.id_donation, this.subTitle);
  // ignore: non_constant_identifier_names
  String title_donation;
  String cost;
  String remember;
  String imageUrll;
  String type;
  // ignore: non_constant_identifier_names
  String id_donation;
  String subTitle;
}

List<Campaign> campaign = [
  Campaign(
      "تأمين أطراف صناعية ",
      "3750000 ل.س",
      "120000 ل.س",
      'https://images.unsplash.com/photo-1535378273068-9bb67d5beacd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXJ0aWZpY2lhbCUyMGxpbWJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      "طبية",
      "C012435",
      "من حق ذوي الاختياج العيش برفاهية لان هذا من ابسط الحقوق لذلك سارعو في بناء ملعب لهم لكي يتساوو مع الحميع ةلا بشعرون بالعنصرية والنقص"),
  Campaign(
      "تجهيزات مدرسية",
      "2000000 ل.س",
      "40000 ل.س",
      'https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2l0aCUyMHNwZWNpYWwlMjBuZWVkcyUyMHNjaG9vbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      "طبية",
      "A012DS35",
      "من حق ذوي الاختياج العيش برفاهية لان هذا من ابسط الحقوق لذلك سارعو في بناء مدرسة لهم لكي يتساوو مع الحميع ةلا بشعرون بالعنصرية والنقص"),
  Campaign(
      "بناء ملعب لذوي الاحتياج",
      "4235000 ل.س",
      "750000 ل.س",
      'https://images.unsplash.com/photo-1595030044556-acfaa61edc0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FtcCUyMG5vdXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      "ترفيهية ",
      "F0729435",
      "من حق ذوي الاختياج العيش برفاهية لان هذا من ابسط الحقوق لذلك سارعو في بناء ملعب لهم لكي يتساوو مع الحميع ةلا بشعرون بالعنصرية والنقص"),
];
