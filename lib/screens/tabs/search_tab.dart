import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Container(
          width: 500.w,
          height: 50.h,
          child: Container(
            width: 312.w,
            height: 45.h,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.black26, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.black26, width: 1)),
                  focusColor: Colors.black26,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                  ),
                  errorMaxLines: 10,
                  suffixIconColor: Colors.black26,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  hintStyle: TextStyle(
                      height: 0.h, fontSize: 16, color: Colors.black26),
                  hintText: "Search"),
            ),
          ),
        ),
        leadingWidth: 0.w,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Card(
          color: Colors.white,

          shape: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage("assets/images/tower.png"),
                    width: 328.w,
                    height: 370.h,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 50, left: 295),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text("Cairo Tower",
                        style: GoogleFonts.radioCanada(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 125), child: Text("4,33")),
                  Icon(
                    Icons.star,
                    color: Colors.black87,
                    size: 12,
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30.w),
                      child: Text(
                          "The Cairo Toweris a free-standing concrete tower  ",
                          style: GoogleFonts.radioCanada(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      "in Cairo Egypt At 187 m (614 ft), it was the tallest  ",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      "the tallest structure in Egypt for 37 years until 1998",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
