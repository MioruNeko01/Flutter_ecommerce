import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/colors.dart';
import 'package:flutter_ecommerce/widgets/big_text.dart';
import 'package:flutter_ecommerce/widgets/icon_and_text_widget.dart';
import 'package:flutter_ecommerce/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController _controller = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: _controller,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFFffd28d),
            image: const DecorationImage(
              image: NetworkImage(
                "https://imgs.search.brave.com/hhRrAOO0-1UbjO-ZUnj5Z0TDvFQWnGsxmWbgCgzG5Hk/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/bWFkZWlubWF1aWNv/dW50eS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDMv/c2h1dHRlcnN0b2Nr/XzczNjUzMDE5OS1z/Y2FsZWQuanBn",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Delicious Chicken"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      const SizedBox(width: 10),
                      SmallText(text: "2287"),
                      const SizedBox(width: 10),
                      SmallText(text: "comments"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconAndTextWidget(
                        text: "Normal",
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor1,
                      ),
                      IconAndTextWidget(
                        text: "1.7km",
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                      ),
                      IconAndTextWidget(
                        text: "Normal",
                        icon: Icons.access_time_rounded,
                        iconColor: AppColors.iconColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
