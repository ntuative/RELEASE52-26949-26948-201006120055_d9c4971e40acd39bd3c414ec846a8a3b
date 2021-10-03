package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_889:String = "select_outfit";
       
      
      private var var_2058:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_889);
         var_2058 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2058;
      }
   }
}
