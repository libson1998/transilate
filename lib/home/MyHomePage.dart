import 'package:flutter/material.dart';
import 'package:transilate/color_theme.dart';
import 'package:transilate/widgets/container_widget.dart';
import 'package:transilate/widgets/form_widget.dart';
import 'package:transilate/widgets/sized_box_heigh_width.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();

  String strInputText = "";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(""),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        width: double.maxFinite,
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FormFieldWidget(
              inputFieldStyle: const TextStyle(color: textColor, fontSize: 19),
              keyboardType: TextInputType.text,
              controller: textEditingController,
              passwordObscure: false,
              hintText: "Text Translation",
              hintStyle: const TextStyle(color: textColor, fontSize: 19),
              isIconVisible: false,
              onChange: (String code) {
                strInputText = code;
              },
              validator: (code) {
                if (code!.isEmpty) {
                  return "This Field can`t be empty";
                } else {}
                return null;
              },
              onSave: (code) => strInputText = code!,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              child: const CustomSizedBox(),
            ),
            const Divider(color: Colors.grey, thickness: 0.4),
            const CustomSizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ContainerWidget(
                    strLanguage: 'Germany',
                    height: screenWidth * 0.12,
                    onPress: () {},
                  ),
                ),
                const CustomSizedBox(width: 6),
                const Icon(Icons.swap_horiz_outlined,color: textColor),
                const CustomSizedBox(width: 6),
                Expanded(
                  child: ContainerWidget(
                    strLanguage: 'Germany',
                    height: screenWidth * 0.12,
                    onPress: () {},
                  ),
                )
              ],
            ),
            const CustomSizedBox(
              height: 24,
            ),
            const Text("Translate From(Germany)",style:   const TextStyle(color: textColor, fontSize: 14,))
          ],
        ),
      ),
    );
  }
}
