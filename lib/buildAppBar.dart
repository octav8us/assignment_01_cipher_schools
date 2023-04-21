import 'package:assignment_01_cipher_schools/mode_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(String title) {
  GlobalKey _key = GlobalKey();
  return AppBar(
    backgroundColor: Colors.blue,

    //TODO: Add elevation, :scrolledUnderElevation  ,
    key: _key,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          child: Row(
            children: [
              Image(
                image: ResizeImage(
                  AssetImage("assets/cipherschools_icon.png"),
                  height: 40,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SubmenuButton(
            onHover: (value) {},
            leadingIcon: IconButton(
              icon: SvgPicture.asset(
                "assets/compass.svg",
                height: 20,
                width: 20,
              ),
              onPressed: () {},
            ),
            trailingIcon: Icon(Icons.arrow_drop_down),
            child: Text("Browse"),
            menuChildren: [
              MenuItemButton(
                child: Text("Option 1"),
                onPressed: () {},
              ),
              MenuItemButton(
                child: Text("Option 2"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
    actions: <Widget>[
      Container(
        width: 300,
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[200],
        ),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              onPressed: () {},
            ),
            hintText: 'Search...',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          ),
        ),
      ),
      SubmenuButton(
        menuChildren: [],
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            IconButton(
              padding: EdgeInsets.only(right: 30, left: 10),
              onPressed: () {},
              icon: Icon(Icons.notifications_none, size: 30),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                height: 25,
                width: 18,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  shape: BoxShape.rectangle,
                  color: Colors.purple,
                ),
                child: const Center(
                    child: Text(
                  "12",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
      CircleAvatar(
        foregroundImage: AssetImage("assets/profilePic.jpg"),
        radius: 30,
        backgroundColor: Colors.red,
      ),
      SubmenuButton(
        menuChildren: [],
        child: Row(children: [
          IconButton(
            icon: SvgPicture.asset("assets/WatchPoints.svg"),
            onPressed: () {},
          ),
          Text("0"),
        ]),
      ),
      modeSwitch(),

      /*
      IconButton(
        icon: const Icon(Icons.search),
        tooltip: 'Search',
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.more_vert),
        tooltip: 'More',
        onPressed: () {},
      ),*/
    ],
  );
}
