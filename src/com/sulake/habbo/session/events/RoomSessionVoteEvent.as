package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_120:String = "RSPE_VOTE_RESULT";
      
      public static const const_121:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1402:int = 0;
      
      private var var_1137:String = "";
      
      private var var_705:Array;
      
      private var var_999:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_999 = [];
         var_705 = [];
         super(param1,param2,param7,param8);
         var_1137 = param3;
         var_999 = param4;
         var_705 = param5;
         if(var_705 == null)
         {
            var_705 = [];
         }
         var_1402 = param6;
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
