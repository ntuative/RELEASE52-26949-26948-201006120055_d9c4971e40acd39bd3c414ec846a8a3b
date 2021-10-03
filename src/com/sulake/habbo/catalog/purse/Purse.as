package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2111:int = 0;
      
      private var var_1582:int = 0;
      
      private var var_2076:Boolean = false;
      
      private var var_2030:int = 0;
      
      private var var_2079:int = 0;
      
      private var var_1583:int = 0;
      
      private var var_2077:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1582;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1582 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2076 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2077 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1582 > 0 || var_1583 > 0;
      }
      
      public function get credits() : int
      {
         return var_2030;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1583;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2076;
      }
      
      public function get pastClubDays() : int
      {
         return var_2077;
      }
      
      public function get pastVipDays() : int
      {
         return var_2079;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2111 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2111;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1583 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2030 = param1;
      }
   }
}
