import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PixabayPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PixabayPage extends StatefulWidget {
  const PixabayPage({Key? key}) : super(key: key);

  @override
  State<PixabayPage> createState() => _PixabayPageState();
}

class _PixabayPageState extends State<PixabayPage> {
  // 画像の取得
  Future<void> fetchImages() async {
    Response response = await Dio().get(
        'https://pixabay.com/api/?key=28196899-8a3428ad749b0c3fa202e73a6&q=yellow+flowers&image_type=photo&pretty=true');

    int total = response.data['total'];
    print(total);
  }

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
