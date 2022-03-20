import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/colors.dart';
import 'package:flutter_ecommerce/utils/dimensions.dart';
import 'package:flutter_ecommerce/widgets/app_icon.dart';
import 'package:flutter_ecommerce/widgets/big_text.dart';
import 'package:flutter_ecommerce/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.radius20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "Egg Side Dish",
                    size: Dimensions.font26,
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(Dimensions.height30),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: ExpandableText(
                    text:
                        "Elote (aka Mexican Street Corn) is an unbelievably popular antojito (little craving or street food) that you can find all over Mexico and the US. It's often served on a stick, though you could skip the skewer and make it right on the grill.If you are a mayo-hater, and worried this recipe won't be for you, think again. Elote will have you reconsidering your stance; or, at the very least, make one incredible exception. The mayo becomes more like a creamy sauce, absorbing the flavor of the chili powder, cotija cheese, and lime juice. It's tangy without overpowering the corn—exactly the kind of refreshing treat you could use at your next cookout or backyard BBQ.If you're having trouble finding cotija cheese, you can replace it with a salty crumby cheese like feta or ricotta salata. But we really recommend getting your hands on cotija for its perfect blend of texture and taste.This side is perfect for any cookout staple—try it with barbecue chicken or grilled steak—or, at a party, you could set up all of the toppings (adding a few wildcards, like scallions, crumbled bacon and sriracha) and create a Build Your Own Elote Bar. 😱In love with this recipe? Us too! Leave us a comment and don't forget to rate it!Elote (aka Mexican Street Corn) is an unbelievably popular antojito (little craving or street food) that you can find all over Mexico and the US. It's often served on a stick, though you could skip the skewer and make it right on the grill.If you are a mayo-hater, and worried this recipe won't be for you, think again. Elote will have you reconsidering your stance; or, at the very least, make one incredible exception. The mayo becomes more like a creamy sauce, absorbing the flavor of the chili powder, cotija cheese, and lime juice. It's tangy without overpowering the corn—exactly the kind of refreshing treat you could use at your next cookout or backyard BBQ.If you're having trouble finding cotija cheese, you can replace it with a salty crumby cheese like feta or ricotta salata. But we really recommend getting your hands on cotija for its perfect blend of texture and taste.This side is perfect for any cookout staple—try it with barbecue chicken or grilled steak—or, at a party, you could set up all of the toppings (adding a few wildcards, like scallions, crumbled bacon and sriracha) and create a Build Your Own Elote Bar.😱In love with this recipe? Us too! Leave us a comment and don't forget to rate it!Elote (aka Mexican Street Corn) is an unbelievably popular antojito (little craving or street food) that you can find all over Mexico and the US. It's often served on a stick, though you could skip the skewer and make it right on the grill.If you are a mayo-hater, and worried this recipe won't be for you, think again. Elote will have you reconsidering your stance; or, at the very least, make one incredible exception. The mayo becomes more like a creamy sauce, absorbing the flavor of the chili powder, cotija cheese, and lime juice. It's tangy without overpowering the corn—exactly the kind of refreshing treat you could use at your next cookout or backyard BBQ.If you're having trouble finding cotija cheese, you can replace it with a salty crumby cheese like feta or ricotta salata. But we really recommend getting your hands on cotija for its perfect blend of texture and taste.This side is perfect for any cookout staple—try it with barbecue chicken or grilled steak—or, at a party, you could set up all of the toppings (adding a few wildcards, like scallions, crumbled bacon and sriracha) and create a Build Your Own Elote Bar. ",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                icon: Icons.remove,
              ),
              AppIcon(
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                icon: Icons.add,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
