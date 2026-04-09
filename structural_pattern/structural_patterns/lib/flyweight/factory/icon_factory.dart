//icon fcatory handles the creation and strore and resue of objects
import "package:flutter/material.dart";
import "/flyweight/flyweight/icon_flyweight.dart";
class  IconFactory {
//to store icons
 static  Map<String, IconFlyweight> icons = {};

  //create object for icons

  static IconFlyweight getIcon({required String iconName}) {
 if(!icons.containsKey(iconName)) {
   if (iconName == "fav") {
     icons[iconName] = IconFlyweight(Icons.favorite);
   }
   if(iconName=="star"){
     icons[iconName]=IconFlyweight(Icons.star);
   }

 }
   return icons[iconName]!;
   }

  }
