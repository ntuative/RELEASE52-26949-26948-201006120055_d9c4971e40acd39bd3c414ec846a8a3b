package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2202:Boolean = false;
      
      private var var_2201:int = 0;
      
      private var var_1582:int = 0;
      
      private var var_2200:int = 0;
      
      private var var_2076:Boolean = false;
      
      private var var_1590:int = 0;
      
      private var var_1583:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1590 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2201;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2202;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2202 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2076;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2201 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1582 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1590;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2076 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2200 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1582;
      }
      
      public function get pixelBalance() : int
      {
         return var_2200;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1583 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1583;
      }
   }
}
