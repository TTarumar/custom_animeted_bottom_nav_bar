import 'dart:async';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class bottom_nav_animation extends StatefulWidget {
  @override
  _bottom_nav_animationState createState() => _bottom_nav_animationState();
}

class _bottom_nav_animationState extends State<bottom_nav_animation> {
  int selected = 0;
  bool floatButtonIndex = false;
  int indexCatcher = 0;
  int indexCatcher2 = 0;
  int animationIndex = 0;
  int lastIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: floatButtonIndex == false
          ? Column(
              children: [
                selected == 0
                    ? Home(context)
                    : selected == 1
                        ? Store(context)
                        : selected == 2
                            ? Add(context)
                            : selected == 3
                                ? Explore(context)
                                : selected == 4
                                    ? Profile(context)
                                    : Spacer(),
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 4, right: 4),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                           animationSlide(0, 0);
                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: selected == 0
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: selected == 0
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    selected == 0 ? "Home" : "",
                                    style: TextStyle(
                                        color: selected == 0
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                         animationSlide(1, 1);
                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: selected == 1
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.store,
                                  color: selected == 1
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    selected == 1 ? "Store" : "",
                                    style: TextStyle(
                                        color: selected == 1
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                          animationSlide(2, 2);
                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: selected == 2
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: selected == 2
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                         animationSlide(3,3);
                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: selected == 3
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.explore,
                                  color: selected == 3
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    selected == 3 ? "Explore" : "",
                                    style: TextStyle(
                                        color: selected == 3
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(()  {
                            animationSlide(4, 4);

                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              color: selected == 4
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: selected == 4
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    selected == 4 ? "Profile" : "",
                                    style: TextStyle(
                                        color: selected == 4
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : selected == 0
              ? Home(context)
              : selected == 1
                  ? Store(context)
                  : selected == 2
                      ? Add(context)
                      : selected == 3
                          ? Explore(context)
                          : selected == 4
                              ? Profile(context)
                              : Spacer(),
      floatingActionButton: floatButtonIndex == false
          ? Container(
              margin: EdgeInsets.only(bottom: 55),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    floatButtonIndex = true;
                  });
                },
                child: Icon(Icons.keyboard_arrow_down),
              ),
            )
          : FloatingActionButton(
              child: Icon(Icons.keyboard_arrow_up),
              onPressed: () {
                setState(() {
                  floatButtonIndex = false;
                });
              }),
    );
  }

  Future<void> animationSlide(int indexCatcher2 , int selectedVoid) async {
    indexCatcher = selected;
    indexCatcher2;
    animationIndex = indexCatcher2 - indexCatcher;

    if (animationIndex != 1 && animationIndex != -1) {
      if (animationIndex < 0) {
        animationIndex = ((animationIndex) * (-1));
        for (int i = selected - 1;
        i >= indexCatcher2;
        i--) {
          if (animationIndex == 2) {
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 1;
                  });
                });
            break;
          } else if (animationIndex == 3) {
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 1;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 2;
                  });
                });
            break;
          } else if (animationIndex == 4) {

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 1;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 2;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i - 3;
                  });
                });

            break;
          }
        }
      } else if (animationIndex > 0) {
        for (int i = selected + 1;
        i <= indexCatcher2;
        i++) {
          if (animationIndex == 2) {
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 1;
                  });
                });
            break;
          } else if (animationIndex == 3) {
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 1;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 2;
                  });
                });
            break;
          } else if (animationIndex == 4) {

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i;
                  });
                });

            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 1;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 2;
                  });
                });
            await Future.delayed(Duration(milliseconds: 150),
                    () {
                  setState(() {
                    selected = i + 3;
                  });
                });

            break;
          }
        }
      }
    } else
      selected = selectedVoid;
  }

  Widget Home(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      width: MediaQuery.of(context).size.width,
      height: floatButtonIndex == false
          ? MediaQuery.of(context).size.height - 60
          : MediaQuery.of(context).size.height,
    );
  }

  Widget Store(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      width: MediaQuery.of(context).size.width,
      height: floatButtonIndex == false
          ? MediaQuery.of(context).size.height - 60
          : MediaQuery.of(context).size.height,
    );
  }

  Widget Add(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.purple),
      width: MediaQuery.of(context).size.width,
      height: floatButtonIndex == false
          ? MediaQuery.of(context).size.height - 60
          : MediaQuery.of(context).size.height,
    );
  }

  Widget Explore(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.yellow),
      width: MediaQuery.of(context).size.width,
      height: floatButtonIndex == false
          ? MediaQuery.of(context).size.height - 60
          : MediaQuery.of(context).size.height,
    );
  }

  Widget Profile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.cyanAccent),
      width: MediaQuery.of(context).size.width,
      height: floatButtonIndex == false
          ? MediaQuery.of(context).size.height - 60
          : MediaQuery.of(context).size.height,
    );
  }
}
