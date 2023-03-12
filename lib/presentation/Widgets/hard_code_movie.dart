import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mouvour_flutter/data/consts/const.dart';

class HardCodeMovie extends StatelessWidget {
  String? isDark;
  String? posterPath;
  String? title;
  String? rating;

  HardCodeMovie(
      {Key? key, this.isDark, this.posterPath, this.rating, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 140,
            height: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    // child: Image(
                    //   image: NetworkImage("${Const.IMG}${e.posterPath}"),
                    // ))
                    child: CachedNetworkImage(
                      imageUrl:
                          "${Const.IMG}${posterPath}",
                      placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                        color: Colors.grey,
                      )),
                      errorWidget: (context, url, error) =>
                          Center(child: Icon(Icons.error)),
                    )),
                SizedBox(
                  height: 10,
                ),
                LimitedBox(
                  maxWidth: 30,
                  child: Text(
                    maxLines: 1,
                    "${title}",
                    style: TextStyle(
                        fontSize: 15,
                        color: isDark == "true" ? Colors.white : Colors.black),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text("⭐ ${rating}/10 IMDb",
                    style: TextStyle(
                        color: isDark == "true" ? Colors.white : Colors.black)),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
