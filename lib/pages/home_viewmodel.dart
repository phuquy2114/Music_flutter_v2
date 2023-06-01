import 'package:play_music_flutter/models/music_model.dart';

import '../base/base_viewmodel.dart';
import '../models/albumb_model.dart';

class HomeVM extends BaseViewModel {
  List<AlbumModel> listDataAlbum = [];

  // list music
  List<MusicModel> listViewMusic = [];

  @override
  void onInit() {
    fetchAlbumAll();
    fetchMusicAll();
  }

  Future fetchAlbumAll() async {
    listDataAlbum.clear();
    listDataAlbum.add(AlbumModel(
        id: 0,
        title: 'HIP HOP',
        description: 'MUSIC',
        imageUrl: 'assets/images/unsplash_PDX_a_82obo.png'));

    listDataAlbum.add(AlbumModel(
        id: 1,
        title: 'BOLERO',
        description: 'MUSIC',
        imageUrl: 'assets/images/unsplash_mbGxz7pt0jM.png'));
    listDataAlbum.add(AlbumModel(
        id: 2,
        title: 'HIP HOP',
        description: 'MUSIC',
        imageUrl: 'assets/images/unsplash_mbGxz7pt0jM.png'));
    listDataAlbum.add(AlbumModel(
        id: 3,
        title: 'HIP HOP',
        description: 'MUSIC',
        imageUrl: 'assets/images/unsplash_mbGxz7pt0jM.png'));

    notifyListeners();
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

    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));

    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
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

    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));

    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
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

    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));

    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        description: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    notifyListeners();
  }
}
