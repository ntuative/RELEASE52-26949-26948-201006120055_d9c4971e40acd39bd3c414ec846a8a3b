package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1402:int;
      
      private var var_1137:String;
      
      private var var_705:Array;
      
      private var var_999:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_705.slice();
      }
      
      public function flush() : Boolean
      {
         var_1137 = "";
         var_999 = [];
         var_705 = [];
         var_1402 = 0;
         return true;
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
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1137 = param1.readString();
         var_999 = [];
         var_705 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_999.push(param1.readString());
            var_705.push(param1.readInteger());
            _loc3_++;
         }
         var_1402 = param1.readInteger();
         return true;
      }
   }
}
