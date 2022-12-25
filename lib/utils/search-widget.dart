import 'package:flutter/material.dart';
import 'package:noa_driver/app-colors/app-colors.dart';



class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.pureWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.dropShadow.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(

          prefixIcon: Image.asset("assets/images/ic-search.png"),

          suffixIcon:GestureDetector(
            child: Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color:AppColors.pureBlack
                ),
                child: Image.asset("assets/images/ic-filter.png")),
            onTap: () {
              controller.clear();
              widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          ),
            hintText: "Find shop or something...",
            hintStyle: TextStyle(color: AppColors.hintextColor,fontSize: 12),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10,right: 20)
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}