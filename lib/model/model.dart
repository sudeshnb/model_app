class Model {
  final String name;
  final String image;
  final String location;
  final String time;
  final String comment;
  final String like;
  final String description;

  Model({
    required this.name,
    required this.image,
    required this.location,
    required this.time,
    required this.comment,
    required this.like,
    required this.description,
  });
}

List<Model> modelData = [
  Model(
    name: 'Niketa William',
    image: 'assets/image/02.jpg',
    location: 'paris',
    time: '18',
    comment: '3',
    like: '576',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
  ),
  Model(
    name: 'Trisha Louls',
    image: 'assets/image/01.jpg',
    location: 'London',
    time: '88',
    comment: '3',
    like: '580',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
  ),
  Model(
    name: 'Trisha Louls',
    image: 'assets/image/04.jpg',
    location: 'London',
    time: '88',
    comment: '3',
    like: '580',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
  ),
  Model(
    name: 'Trisha Louls',
    image: 'assets/image/05.jpg',
    location: 'London',
    time: '88',
    comment: '3',
    like: '580',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
  ),
  Model(
    name: 'Trisha Louls',
    image: 'assets/image/06.jpg',
    location: 'London',
    time: '88',
    comment: '3',
    like: '580',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
  ),
];

class Photos {
  final String image;

  Photos({required this.image});
}

List<Photos> photos = [
  Photos(image: 'assets/image/011.png'),
  Photos(image: 'assets/image/022.png'),
  Photos(image: 'assets/image/011.png'),
  Photos(image: 'assets/image/022.png'),
];
