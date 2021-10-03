package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1473:int = -1;
      
      private var var_1201:Boolean;
      
      private var var_1202:String;
      
      private var var_1787:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1787 = String(param1["set-type"]);
         var_1202 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1201 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1473 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1202;
      }
      
      public function get staticId() : int
      {
         return var_1473;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1473 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1201;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1201 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1202 = param1;
      }
      
      public function get setType() : String
      {
         return var_1787;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
