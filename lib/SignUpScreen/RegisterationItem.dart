import 'package:flutter/material.dart';

class RegisterationItem extends StatelessWidget {
  String imagePath;
  String hintText;

  RegisterationItem(this.imagePath, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: TextField(
        style: TextStyle(fontSize: 20, color: Colors.white),
        decoration: new InputDecoration(
          prefixIcon: CircleAvatar(
              backgroundImage: AssetImage('$imagePath'),
              backgroundColor: Color.fromRGBO(50, 165, 248, 1),
              radius: 30),
          labelText: "   $hintText",
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),

        // child:  Column(
        //   children: [
        //     Row(children:[
        //     CircleAvatar(backgroundImage:AssetImage('$imagePath') , backgroundColor: Color.fromRGBO(50, 165, 248, 1),radius: 35),
        //
        //     TextFormField(
        //
        //       decoration: InputDecoration(
        //         hintText: "$hintText",
        //         enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(25),
        //           borderSide: BorderSide(color: Colors.black),
        //           gapPadding: 10,
        //         ),
        //         focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(25),
        //           borderSide: BorderSide(color: Colors.black),
        //           gapPadding: 10,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        // Row(children:[
        //   CircleAvatar(backgroundImage:AssetImage('$imagePath') , backgroundColor: Color.fromRGBO(50, 165, 248, 1),radius: 35),
        //
        //   TextFormField(
        //
        //     decoration: InputDecoration(
        //       hintText: "$hintText",
        //       enabledBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(25),
        //         borderSide: BorderSide(color: Colors.black),
        //         gapPadding: 10,
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(25),
        //         borderSide: BorderSide(color: Colors.black),
        //         gapPadding: 10,
        //       ),
        //     ),
        //   ),
        // ],
        // ),
      ),
    );
  }
}

Widget defaultButtton({
  Color? backGround,
  String? txt,
  Function()? onPress,
}) =>
    ElevatedButton(
      child: Text(
        txt!,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 22.0,
        ),
      ),

      // fixedSize: MaterialStateProperty.resolveWith <Size> (
      //         (Set<MaterialState> states) {
      //           return const Size(double.infinity, 45);
      //     },
      // ),
      // backgroundColor: MaterialStateProperty.resolveWith<Color>(
      //       (Set<MaterialState> states) {
      //     if (states.contains(MaterialState.pressed))
      //       {
      //         return Colors.red;
      //       }
      //     return Colors.blue!;
      //   },
      // ),

      style: ElevatedButton.styleFrom(
        //onSurface: surfaceColor,
        minimumSize: const Size(double.infinity, 50),
        primary: backGround,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      onPressed: onPress,
    );

Widget defaultTextForm({
  String? label,
  String? hint,
  String? imagePath,
  // double? imageWidth,
  // double? imageHeight,
  TextInputType? type,
  Widget? suffixICon,
  bool isPassword = false,
  Function()? onTap,
  TextEditingController? controller,
}) =>
    Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white12,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Center(
        child: Center(
          child: TextFormField(
            cursorColor: Colors.white,
            textAlign: TextAlign.start,
            obscuringCharacter: '*',
            keyboardType: type,
            obscureText: isPassword,
            onTap: onTap,
            style: const TextStyle(
              //height: .05,
              color: Colors.white,
            ),
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              alignLabelWithHint: true,
              suffixIcon: suffixICon,

              // focusedBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Color(0xFF32A5F8),),
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.white,),
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),

              hintText: hint,
              labelText: label,

              labelStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),

              hintStyle: const TextStyle(
                color: Colors.grey,
                textBaseline: TextBaseline.alphabetic,
                fontSize: 15,
              ),
              //  icon:

              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color(0xFF32A5F8),
                  // 0xFF for spcifying  transparency
                  child: Image.asset(
                    imagePath!,
                    alignment: AlignmentDirectional.center,
                    width: 38,
                    height: 37,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
