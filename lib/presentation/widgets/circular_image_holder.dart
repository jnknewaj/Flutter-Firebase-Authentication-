import 'dart:io';

import 'package:flutter/material.dart';

class CircularImageHolder extends StatelessWidget {
  final File imageFile;
  final String imageUrl;
  final double scrWidth;
  final IconData icon;
  final Function() onImageAdded;
  final double imageSize;

  const CircularImageHolder({
    Key key,
    this.imageFile,
    @required this.imageUrl,
    this.scrWidth,
    this.icon,
    this.onImageAdded,
    @required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * imageSize,
            height: MediaQuery.of(context).size.width * imageSize,
            child: ClipOval(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: imageFile == null
                    ? Image.network(
                        imageUrl ??
                            'https://www.w3schools.com/w3images/avatar6.png',
                        fit: BoxFit.fill,
                      )
                    : Image.file(
                        imageFile,
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ),
          icon == null
              ? Container()
              : Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onImageAdded == null ? () {} : onImageAdded,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.blue[400],
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
