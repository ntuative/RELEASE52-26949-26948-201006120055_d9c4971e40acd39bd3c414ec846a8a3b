package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_2244:int;
      
      private var var_2310:String;
      
      private var var_1428:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_2244;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_2310;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1428 = param1.readInteger();
         this.var_2310 = param1.readString();
         this.var_2244 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1428;
      }
   }
}
