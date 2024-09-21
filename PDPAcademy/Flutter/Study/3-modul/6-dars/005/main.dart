// Media sinfini yaratib, unga play metodini qo'shing. Bu play metodini
// Video, Music, va Podcast kabi turli subklasslarda amalga oshiring.

abstract class Media {
  void play();
}

class Video extends Media {
  @override
  void play() {
    print("$runtimeType is being played...");
  }
}

class Music extends Media {
  @override
  void play() {
    print("$runtimeType is being played...");
  }
}

class Podcast extends Media {
  @override
  void play() {
    print("$runtimeType is being played...");
  }
}

void main() {
  List<Media> medias = [Video(), Music(), Podcast()];
  for (Media media in medias) {
    media.play();
  }
}
