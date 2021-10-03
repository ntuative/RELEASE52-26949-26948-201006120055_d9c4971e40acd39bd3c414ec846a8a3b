package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1058:int = 0;
      
      private var var_1312:int = 0;
      
      private var var_1965:String = "";
      
      private var var_1059:int = 0;
      
      private var var_2033:String = "";
      
      private var var_2032:int = 0;
      
      private var var_1531:String = "";
      
      private var var_1784:int = 0;
      
      private var var_2034:int = 0;
      
      private var var_1968:String = "";
      
      private var var_2035:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1784 = param1;
         var_1968 = param2;
         var_1531 = param3;
         var_1965 = param4;
         var_2033 = param5;
         if(param6)
         {
            var_1312 = 1;
         }
         else
         {
            var_1312 = 0;
         }
         var_2032 = param7;
         var_2034 = param8;
         var_1059 = param9;
         var_2035 = param10;
         var_1058 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1784,var_1968,var_1531,var_1965,var_2033,var_1312,var_2032,var_2034,var_1059,var_2035,var_1058];
      }
      
      public function dispose() : void
      {
      }
   }
}
