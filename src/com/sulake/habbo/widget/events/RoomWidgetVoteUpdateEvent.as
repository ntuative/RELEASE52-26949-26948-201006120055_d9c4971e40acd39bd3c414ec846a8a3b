package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWPUE_VOTE_RESULT";
      
      public static const const_121:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1402:int;
      
      private var var_1137:String;
      
      private var var_705:Array;
      
      private var var_999:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1137 = param2;
         var_999 = param3;
         var_705 = param4;
         if(var_705 == null)
         {
            var_705 = [];
         }
         var_1402 = param5;
      }
      
      public function get votes() : Array
      {
         return var_705.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1402;
      }
      
      public function get question() : String
      {
         return var_1137;
      }
      
      public function get choices() : Array
      {
         return var_999.slice();
      }
   }
}
