import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:only_believe_hymns/widgets/models.dart';
import 'package:only_believe_hymns/widgets/song_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  List foundHymns = [];

  @override
  initState() {
    foundHymns.addAll(listHymns);
    super.initState();
  }

  void search(String searchWord) {
    setState(() {
      foundHymns.clear();
      foundHymns.addAll(
        listHymns.where(
          (element) =>
              element.hymnTitle.toUpperCase().trim().contains(searchWord),
        ),
      );
    });
    for (HymnInfos item in foundHymns) {
      if (kDebugMode) {
        print(item.hymnTitle);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade900,
          title: SizedBox(
            height: 38,
            child: TextField(
              controller: searchController,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
              onChanged: (value) => search(value.toUpperCase()),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                filled: true,
                fillColor: Colors.grey[850],
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),
                hintText: 'Search Hymns ...',
              ),
            ),
          ),
        ),
        body: foundHymns.isEmpty
            ? const Center(
                child: Text(
                  'No Hymns found ....',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: foundHymns.length,
                itemBuilder: (context, index) => Card(
                    key: ValueKey(foundHymns[index]),
                    color: Colors.black,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: HymnTile(
                      index: int.parse(foundHymns[index].hymnNumber.trim()) - 1,
                    )),
              ));
  }
}

class Foreward extends StatelessWidget {
  const Foreward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'FOREWARD',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 8,
                ),
                Text(
                  '''The first place, if you want Scripture, the people are supposed to come to the house of God for one purpose, that is, to worship, to sing songs, and to worship God. That’s the way God expects it.

QUESTIONS AND ANSWERS, January 3, 1954, paragraph 111.
          
There’s something about those old-fashioned songs, the old-time hymns. I’d rather have them than all these new worldly songs put in, that is in Christian churches.
          
HEBREWS, CHAPTER SIX, September 8, 1957, paragraph 449.
          
I tell you, I really like singing.
          
DOOR TO THE HEART, November 25, 1959.
          
Oh, my! Don’t you feel good? Think, friends, this is Pentecost, worship. This is Pentecost. Let’s clap our hands and sing it. Pentecostal people, everybody, try to loosen up, get that old Methodist formality out of you. Now come on, let’s sing it!
          
THE SEVENTY WEEKS OF DANIEL, August 6, 1961, paragraph 230.
          
Oh. I just love those good, old songs, there’s something about them songs that I like. You can have all of your little, chopped up songs you want to. Give me that, I like that, Past The Riven Veil, all these other pretty songs like that. I like them songs. I think singing is part of worship (yes sir), singing the praises to the Lord. All right, for our dismissing now, song, is Take The Name Of Jesus With You.
          
QUESTIONS AND ANSWERS, August 30, 1964 P.M., pages 270 and 271
          
Now let’s close our eyes and raise our hands, and sing to Him.
          
WHY IT HAD TO BE SHEPHERDS, December 21, 1964, paragraph 272.
          
Does that make you feel good? How many likes to sing them old songs? I_I just love them. Don’t you? . . . Doesn’t that make you feel wonderful? My, my! Oh. Let’s just raise our hands and just praise Him in our own way.
          
A MAN RUNNING FROM THE PRESENCE OF THE LORD. February 17, 1965, pages 35 and 36
          
William Marrion Branham 
          ''',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
