package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1366:int;
      
      private var var_1367:String;
      
      private var var_1918:String;
      
      private var _index:int;
      
      private var var_1919:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1366 = param1;
         var_1918 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1367;
      }
      
      public function get questionId() : int
      {
         return var_1366;
      }
      
      public function get questionText() : String
      {
         return var_1918;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1367 = param1;
         var_1919 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1919;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
