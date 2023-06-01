import 'package:play_music_flutter/base/base_viewmodel.dart';

import '../../models/music_model.dart';

class MusicDetailVM extends BaseViewModel {
  // list music
  List<MusicModel> listViewMusic = [];

  @override
  void onInit() {
    fetchMusicAll();
  }

  Future<void> fetchMusicAll() async {
    listViewMusic.clear();
    listViewMusic.add(MusicModel(
        id: 1,
        type: 0,
        title: 'The last best1',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'making_my_way.mp3',
        isLoadSound: true));

    listViewMusic.add(MusicModel(
        id: 2,
        type: 1,
        title: 'The last best2',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'Infinity.mp3',
        isLoadSound: false));

    listViewMusic.add(MusicModel(
        id: 3,
        type: 1,
        title: 'The last best3',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    notifyListeners();
  }
}
