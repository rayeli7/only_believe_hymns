import 'package:flutter/material.dart';
import 'package:only_believe_hymns/widgets/hymn.dart';

import 'models.dart';

class HymnTile extends StatefulWidget {
  const HymnTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<HymnTile> createState() => _HymnTileState();
}

class _HymnTileState extends State<HymnTile>
    with AutomaticKeepAliveClientMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final hymn = listHymns[widget.index];
    super.build(context);
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HymnPage(listHymns[widget.index])));
        },
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${widget.index + 1}',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[400]!,
                )),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        title: Text(
          hymn.hymnTitle.trim().toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            hymn.hymnLyrics,
            maxLines: 1,
            style: TextStyle(
              color: Colors.grey[400]!,
              fontSize: 13,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  hymn.isFavourite = !hymn.isFavourite;
                  List<HymnInfos> myfavourites = [...myFavourites.value];
                  hymn.isFavourite
                      ? myfavourites.add(hymn)
                      : myfavourites.remove(hymn);
                  myFavourites.value = myfavourites;
                });
              },
              icon: Icon(
                hymn.isFavourite ? Icons.favorite : Icons.favorite_border,
                color: hymn.isFavourite ? Colors.green : Colors.white,
              ),
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
