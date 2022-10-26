class UnbordingContent {
  String image;
  String title;

  UnbordingContent({required this.image, required this.title});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Book your ticket from home!',
    image: 'assets/bus1.jpg',
  ),
  UnbordingContent(
    title: 'You can choose your preferable seats',
    image: 'assets/seat.jpg',
  ),
  UnbordingContent(
    title: 'You are just few clicks away',
    image: 'assets/bus2.png',
  ),
];
