import 'package:flutter/material.dart';
import 'blog.dart';

class BlogDetail extends StatefulWidget {
  final Blog blog;

  const BlogDetail({
    Key? key,
    required this.blog,
  }) : super(key: key);
  @override
  _BlogDetailState createState() {
    return _BlogDetailState();
  }
}

// ignore: todo
//TODO:Add _BlogDetailState
class _BlogDetailState extends State<BlogDetail> {
  // ignore: todo
  //TODO:Add _sliderVal here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.blog.label),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image(
                  image: AssetImage(widget.blog.imageUrl),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(widget.blog.label, style: const TextStyle(fontSize: 18)),
              // ignore: todo
              //TODO: Add Expanded
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.blog.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.blog.ingredients[index];

                    // ignore: todo
                    //TODO:Add ingredient.quantity

                    return Text(
                        '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}');
                  },
                ),
              ),

              // ignore: todo
              //TODO: Add Slider() here
            ],
          ),
        ));
  }
}
