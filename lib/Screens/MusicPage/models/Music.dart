import 'package:flutter/material.dart';

class Music {
  final String image, title, description;
  final int subtitle, size, id;
  final Color color;
  Music({
    this.id,
    this.image,
    this.title,
    this.subtitle,
    this.description,
    this.size,
    this.color,
  });
}

List<Music> Musics = [
  Music(
      id: 1,
      title: "XYZ",
      subtitle: 234,
      size: 12,
      image: "assets/images/1.jpg",
      color: Color(0xFF3D82AE)),
  Music(
      id: 2,
      title: "Belt Bag",
      subtitle: 234,
      size: 8,
      image: "assets/images/2.jpg",
      color: Color(0xFFD3A984)),
  Music(
      id: 3,
      title: "Hang Top",
      subtitle: 234,
      size: 10,
      image: "assets/images/3.jpg",
      color: Color(0xFF989493)),
  Music(
      id: 4,
      title: "Old Fashion",
      subtitle: 234,
      size: 11,
      image: "assets/images/3.jpg",
      color: Color(0xFFE6B398)),
  Music(
      id: 5,
      title: "XYZ",
      subtitle: 234,
      size: 12,
      image: "assets/images/1.jpg",
      color: Color(0xFFFB7883)),
  Music(
    id: 6,
    title: "XYZ",
    subtitle: 234,
    size: 12,
    image: "assets/images/2.jpg",
    color: Color(0xFFAEAEAE),
  ),
];
