import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:play_music_flutter/models/music_model.dart';

import '../gen/assets.gen.dart';
import '../models/albumb_model.dart';
import '../pages/detail/music_detail_page.dart';

class ItemMusicWidget extends StatelessWidget {
  final MusicModel model;

  const ItemMusicWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MusicDetailPage(
                      model: model,
                      albumModel: AlbumModel(
                          id: 0,
                          title: 'HIP HOP',
                          description: 'MUSIC',
                          imageUrl: 'assets/images/unsplash_PDX_a_82obo.png'),
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shadowColor: Colors.grey,
                    child: CachedNetworkImage(
                      imageUrl: model.imageUrl ?? "",
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        model.author ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(model.time ?? ""),
                  const SizedBox(
                    width: 20,
                  ),
                  Assets.icons.icGroup.svg(),
                  const SizedBox(
                    width: 30,
                  ),
                  Assets.icons.icMenu.svg(),
                ],
              ),
            ],
          ),
        ));
  }
}
