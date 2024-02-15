class BookList {
  String imageUrl;
  String writers;
  String title;

  BookList(
      {required this.imageUrl, required this.writers, required this.title});
}

List<BookList> bookLists = [
  BookList(
      imageUrl: 'assets/images/trending-book1.png',
      writers: 'Guy Kawasaki',
      title: 'Enchantment'),
  BookList(
      imageUrl: 'assets/images/trending-book2.png',
      writers: 'Aaron Mahnke',
      title: 'Enchantment'),
  BookList(
      imageUrl: 'assets/images/trending-book3.png',
      writers: 'Spencer Johnson',
      title: 'Who Moved My Cheese'),
];
