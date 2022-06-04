import 'package:flutter/material.dart';
import 'package:only_believe_hymns/widgets/models.dart';

class HymnPage extends StatelessWidget {
  final HymnInfos _hymn;

  const HymnPage(this._hymn, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('#${_hymn.hymnNumber}   ${_hymn.hymnTitle}'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Key ${_hymn.hymnKey}',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                _hymn.hymnLyrics,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
