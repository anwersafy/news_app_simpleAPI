import 'package:flutter/material.dart';
import 'package:vsapi/models/articles.dart';

class News extends StatelessWidget {
  News({Key? key, required this.articles}) : super(key: key);
  final Articles articles ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet
          (
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Container(
                height: 800,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(articles.urlToImage!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
                      child: Text(articles.title!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
                      child: Text(
                        articles.description!,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          backgroundColor: Colors.transparent,
          //isScrollControlled: true,


        );},
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(articles.urlToImage!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: Text(articles.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 5),
            child: Text(
              articles.description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );

  }
}
