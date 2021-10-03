package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_631:String;
      
      private var _id:int;
      
      private var var_1758:String = "";
      
      private var var_1757:int;
      
      private var var_1760:String;
      
      private var var_1759:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1757 = parseInt(param1.@pattern);
         var_631 = String(param1.@gender);
         var_1759 = Boolean(parseInt(param1.@colorable));
         var_1758 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1758;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1759;
      }
      
      public function get gender() : String
      {
         return var_631;
      }
      
      public function get patternId() : int
      {
         return var_1757;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1760;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1760 = param1;
      }
   }
}
