package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1142:Boolean;
      
      private var var_1143:Boolean;
      
      private var var_1144:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1142;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1143;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1144 = param1.readBoolean();
         var_1143 = param1.readBoolean();
         var_1142 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1144;
      }
      
      public function flush() : Boolean
      {
         var_1144 = false;
         var_1143 = false;
         var_1142 = false;
         return true;
      }
   }
}
