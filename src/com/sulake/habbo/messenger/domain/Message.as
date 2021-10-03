package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_590:int = 2;
      
      public static const const_887:int = 6;
      
      public static const const_697:int = 1;
      
      public static const const_576:int = 3;
      
      public static const const_917:int = 4;
      
      public static const const_724:int = 5;
       
      
      private var var_2135:String;
      
      private var var_1075:int;
      
      private var var_1901:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1075 = param2;
         var_1901 = param3;
         var_2135 = param4;
      }
      
      public function get time() : String
      {
         return var_2135;
      }
      
      public function get senderId() : int
      {
         return var_1075;
      }
      
      public function get messageText() : String
      {
         return var_1901;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
