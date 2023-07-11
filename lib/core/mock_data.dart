// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataModel {
  final String? artistName;
  final String? imagePath;
  final String? songTitle;
  final String? monthlyListeners;
  final String? subTitle;
  DataModel({
    this.artistName,
    this.imagePath,
    this.songTitle,
    this.monthlyListeners,
    this.subTitle,
  });
}

var mockDataBase = [
  DataModel(
    artistName: "J.Cole",
    imagePath: "jcole.jpeg",
    songTitle: "No Role Modelz",
    subTitle: "songs of Solomon",
    monthlyListeners: "42,983,820",
  ),
  DataModel(
    artistName: "Dave",
    imagePath: "dave.webp",
    songTitle: "System",
    subTitle: "songs of Solomon",
    monthlyListeners: "22,464,476",
  ),
  DataModel(
    artistName: "J hus",
    imagePath: "jhus.jpeg",
    songTitle: "Who Told You",
    subTitle: "songs of Solomon",
    monthlyListeners: "11,976,646",
  ),
  DataModel(
    artistName: "Kendrick Lamar",
    imagePath: "kendrick_lamar.jpeg",
    songTitle: "Money Trees",
    subTitle: "songs of Solomon",
    monthlyListeners: "50,937,181",
  ),
  DataModel(
    artistName: "Stormzy",
    imagePath: "stormzy.jpeg",
    songTitle: "Toxic Trait",
    subTitle: "songs of Solomon",
    monthlyListeners: "10,192,262",
  ),
  DataModel(
    artistName: "Davido",
    imagePath: "timeless.jpeg",
    songTitle: "Feel",
    subTitle: "songs of Solomon",
    monthlyListeners: "8,357,361",
  ),
];
