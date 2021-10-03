package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1911:int;
      
      private var var_1912:int = 0;
      
      private var var_1913:String;
      
      private var var_1914:int;
      
      private var var_1910:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1911 = param1;
         var_1914 = param2;
         var_1910 = param3;
         var_1913 = param4;
      }
      
      public function get length() : int
      {
         return var_1914;
      }
      
      public function get name() : String
      {
         return var_1910;
      }
      
      public function get creator() : String
      {
         return var_1913;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1912;
      }
      
      public function get id() : int
      {
         return var_1911;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1912 = param1;
      }
   }
}
