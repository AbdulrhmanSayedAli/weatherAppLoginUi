import 'package:flutter/material.dart';
import 'package:vitality/models/ItemBehaviour.dart';
import 'package:vitality/models/WhenOutOfScreenMode.dart';
import 'package:vitality/vitality.dart';
import 'animatedGradient.dart';

class BackGround extends StatefulWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        AnimatedGradient(
          colors: const [
            Color(0xff212D74),
            Color(0xff3667AF),
            Color(0xff193845),
            Color(0xff6A8AB9)
          ],
        ),
        /** 
          this package is made by me you can learn more about it
          in the link : https://github.com/AbdulrhmanSayedAli/vitality
        **/
        Vitality.randomly(
          height: size.height,
          width: size.width,
          minSpeed: 0.3,
          maxSpeed: 0.55,
          itemsCount: 8,
          minSize: 30,
          maxSize: 60,
          maxOpacity: 0.6,
          enableYMovements: false,
          whenOutOfScreenMode: WhenOutOfScreenMode.Teleport,
          randomItemsBehaviours: [
            ItemBehaviour(shape: ShapeType.Icon, icon: Icons.cloud),
            ItemBehaviour(shape: ShapeType.Icon, icon: Icons.cloud_queue),
          ],
          randomItemsColors: const [Colors.white],
        ),
        Vitality.randomly(
          height: size.height,
          width: size.width,
          minSpeed: 3,
          itemsCount: 32,
          enableXMovements: false,
          maxSize: 15,
          enableYMovements: false,
          whenOutOfScreenMode: WhenOutOfScreenMode.Teleport,
          randomItemsBehaviours: [
            ItemBehaviour(shape: ShapeType.Icon, icon: Icons.star)
          ],
          randomItemsColors: const [Colors.yellow],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            "assets/images/bottom_night.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
