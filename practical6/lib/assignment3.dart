import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 208, 208),
      appBar: AppBar(
        title: Text("Netflix"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.only(bottom: 10,top: 10),
              child: Text("movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwMu-BlFWjOivzVx87d0Epmhp7s963OcEgig&s"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwMu-BlFWjOivzVx87d0Epmhp7s963OcEgig&s"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwMu-BlFWjOivzVx87d0Epmhp7s963OcEgig&s"),
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 10,top: 10),
              child: Text("webseries",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                
                children: [
                  
                  Container(
                    height: 294,
                    width: 172,
                   margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BOGRmMjc4MjEtM2E4YS00NjM5LWIwYzUtYTFlNTdhMTRhNmJjXkEyXkFqcGdeQXVyMTExMTIzMTA5._V1_FMjpg_UX1000_.jpg"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BOGRmMjc4MjEtM2E4YS00NjM5LWIwYzUtYTFlNTdhMTRhNmJjXkEyXkFqcGdeQXVyMTExMTIzMTA5._V1_FMjpg_UX1000_.jpg"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BOGRmMjc4MjEtM2E4YS00NjM5LWIwYzUtYTFlNTdhMTRhNmJjXkEyXkFqcGdeQXVyMTExMTIzMTA5._V1_FMjpg_UX1000_.jpg"),
                  ),
                ],
                            ),
              ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("popular content",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BY2ZiODA2MGYtMmMxMi00YjlmLWFmYjktMWYyOTMwNWFkNWNkXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                   margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BY2ZiODA2MGYtMmMxMi00YjlmLWFmYjktMWYyOTMwNWFkNWNkXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg"),
                  ),
                  Container(
                    height: 294,
                    width: 172,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BY2ZiODA2MGYtMmMxMi00YjlmLWFmYjktMWYyOTMwNWFkNWNkXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}