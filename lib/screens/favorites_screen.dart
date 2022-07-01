import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;
   FavoritesScreen(this.favoriteMeal);

  @override
  Widget build(BuildContext context) {
if(favoriteMeal.isEmpty){
 return const Center(
      child: Text('you have no favorites yetm - start adding some!'),
    );
}else{
return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            title: favoriteMeal[index].title,
            imageUrl: favoriteMeal[index].imageUrl,
            duration: favoriteMeal[index].duration,
            affordability: favoriteMeal[index].affordability,
            complexity: favoriteMeal[index].complexity,
          );
        },
        itemCount:favoriteMeal.length,
      );
}
   
  }
}
