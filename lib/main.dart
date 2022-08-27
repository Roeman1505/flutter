import 'package:flutter/material.dart';
import 'blog.dart';
import 'blog_details.dart';

void main() {
  runApp(const BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Blog Site',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blueGrey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Blog Site'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: Blog.samples.length,
            itemBuilder: (BuildContext context, int index) {
              // ignore: todo
              //TODO:Add GestureDetector
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    // ignore: todo
                    //TODO:Replace return with BlogDetail
                    return BlogDetail(blog: Blog.samples[index]);
                  }));
                },
                child: buildBlogCard(Blog.samples[index]),
              );

              // ignore: todo
              //TODO: Update to return Recipe Card
            }),
      ),
    );
  }
}
// ignore: todo
// TODO: Add buildRecipeCard()

Widget buildBlogCard(Blog blog) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(blog.imageUrl)),
          const SizedBox(
            height: 14.0,
          ),
          Text(blog.label,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino')),
        ],
      ),
    ),
  );
}
