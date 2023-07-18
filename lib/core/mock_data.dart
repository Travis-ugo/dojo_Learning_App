// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DataModel {
  final String? artistName;
  final String? imagePath;
  final String? songTitle;
  final String? monthlyListeners;
  final String? subTitle;
  final Color color;
  DataModel({
    this.artistName,
    this.imagePath,
    this.songTitle,
    this.monthlyListeners,
    this.subTitle,
    required this.color,
  });
}

var mockDataBase = [
    DataModel(
    artistName: "J.Hus",
    imagePath: "BABY.webp",
    songTitle: "My Baby",
    subTitle: "songs of Solomon",
    monthlyListeners: "42,983,820", color: const Color.fromARGB(255, 173, 40, 30),
  ),
  DataModel(
    artistName: "J.Cole",
    imagePath: "jcole.jpeg",
    songTitle: "No Role Modelz",
    subTitle: "songs of Solomon",
    monthlyListeners: "42,983,820",
    color: const Color.fromARGB(255, 52, 78, 247),
  ),
  DataModel(
    artistName: "Dave",
    imagePath: "dave.webp",
    songTitle: "System",
    subTitle: "songs of Solomon",
    monthlyListeners: "22,464,476",
    color: Color.fromARGB(255, 194, 38, 82),
  ),
  DataModel(
    artistName: "J hus",
    imagePath: "jhus.jpeg",
    songTitle: "Who Told You",
    subTitle: "songs of Solomon",
    monthlyListeners: "11,976,646",
    color: Color.fromARGB(255, 34, 22, 21),
  ),
  DataModel(
    artistName: "Kendrick Lamar",
    imagePath: "kendrick_lamar.jpeg",
    songTitle: "Money Trees",
    subTitle: "songs of Solomon",
    monthlyListeners: "50,937,181",
    color: const Color.fromARGB(255, 159, 118, 104),
  ),
  DataModel(
    artistName: "Stormzy",
    imagePath: "stormzy.jpeg",
    songTitle: "Toxic Trait",
    subTitle: "songs of Solomon",
    monthlyListeners: "10,192,262",
    color: const Color.fromARGB(255, 79, 19, 14),
  ),
  DataModel(
    artistName: "Davido",
    imagePath: "timeless.jpeg",
    songTitle: "Feel",
    subTitle: "songs of Solomon",
    monthlyListeners: "8,357,361",
    color: Colors.green,
  ),
];
