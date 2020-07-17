import 'package:flutter/material.dart';
import 'package:flutter_plugin/model/model_movie.dart';
import 'package:flutter_plugin/widget/box_slider.dart';
import 'package:flutter_plugin/widget/carousel_slider.dart';
import 'package:flutter_plugin/widget/circle_slider.dart';

//Movie DB from backend ==> statefulwidget
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사이코지만 괜찮아',
      'keyword': '가족/로맨스/코미디',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '역도요정 김복주',
      'keyword': '청춘/스포츠/로맨스/코미디',
      'poster': 'test_movie_2.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '미스터 션샤인',
      'keyword': '시대극/멜로/로맨스/드라마',
      'poster': 'test_movie_3.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '응답하라 1994',
      'keyword': '시대극/로맨스/코미디/드라마 ',
      'poster': 'test_movie_4.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '내가 사랑했던 모든 남자들에게',
      'keyword': '로맨스/소설',
      'poster': 'test_movie_5.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': '루시퍼',
      'keyword': '범죄/드라마/판타지/드라마',
      'poster': 'test_movie_6.jpg',
      'like': false
    }),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/netflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}