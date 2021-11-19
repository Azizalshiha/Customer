import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class MainGridList extends StatelessWidget {
  List<_Photo> _photos() {
    return [
      _Photo(imageURL: 'https://educaloi.qc.ca/wp-content/uploads/507810382_1200x563.jpg',
          title: 'Pets',
          subtitle: ''),
      _Photo(imageURL: 'https://www.zarias.com/wp-content/uploads/2019/10/99eafb48-7638-49bb-bb65-6620455206c3-best-dice-games1.jpg',
          title: 'Games',
          subtitle: ''),
      _Photo(imageURL: 'https://img.jakpost.net/c/2018/06/27/2018_06_27_48298_1530062479._large.jpg',
          title: 'Cooking',
          subtitle: 'looks kind'),
      _Photo(imageURL: 'https://www.techbitmax.com/wp-content/uploads/2021/08/shutterstock_1583248045.jpg',
          title: 'Technology',
          subtitle: ''),
      _Photo(imageURL: 'https://i1.sndcdn.com/avatars-000606604806-j6ghpm-t500x500.jpg',
          title: 'Music',
          subtitle: ''),
      _Photo(imageURL: 'https://obxartstudio.com/wp-content/uploads/2016/10/Art.jpg',
          title: 'Art & gallery',
          subtitle: ''),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: whiteCont,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: const EdgeInsets.all(8),
            childAspectRatio: 1,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children:_photos().map<Widget>( (photo) {
              return _GridDemoPhotoItem(
                photo: photo,
              );
            }).toList()),
      ),
    );
  }
}

class _Photo {
  _Photo({
    required this.imageURL,
    required this.title,
    required this.subtitle,
  });

  final String imageURL;
  final String title;
  final String subtitle;
}

class GridSubject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('Categories',
            style: TextStyle(fontFamily: 'ConcertOne-Regular',
                fontSize: 24,fontWeight: FontWeight.bold)),
      );
  }
}

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget {
  _GridDemoPhotoItem({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final _Photo photo;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Image.network(photo.imageURL,
        fit: BoxFit.cover,
      ),
    );

    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black45,
          title: _GridTitleText(photo.title),
          subtitle: _GridTitleText(photo.subtitle),
        ),
      ),
      child: image,
    );
  }}