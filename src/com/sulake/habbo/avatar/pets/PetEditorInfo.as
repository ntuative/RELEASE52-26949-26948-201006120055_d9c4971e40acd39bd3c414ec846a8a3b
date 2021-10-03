package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2324:Boolean;
      
      private var var_2023:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2324 = Boolean(parseInt(param1.@club));
         var_2023 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2324;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_2023;
      }
   }
}
