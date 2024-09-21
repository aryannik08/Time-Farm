import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Pages/Time%20Farm/models/Earn/Store/store_model.dart';
import 'package:video_player/video_player.dart';

class StoreWidget extends StatelessWidget {
  final StoreModel storeModel;
  const StoreWidget({super.key, required this.storeModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Card(
              child: Icon(storeModel.icon),
            ),
          ),
          Text(storeModel.name,),

        ],
      ),
    );
  }
}
