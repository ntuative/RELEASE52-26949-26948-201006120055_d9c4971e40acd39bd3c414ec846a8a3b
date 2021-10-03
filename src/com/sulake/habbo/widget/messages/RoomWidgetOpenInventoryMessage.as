package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_1006:String = "inventory_badges";
      
      public static const const_1216:String = "inventory_clothes";
      
      public static const const_1317:String = "inventory_furniture";
      
      public static const const_739:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_905:String = "inventory_effects";
       
      
      private var var_2094:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_739);
         var_2094 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2094;
      }
   }
}
