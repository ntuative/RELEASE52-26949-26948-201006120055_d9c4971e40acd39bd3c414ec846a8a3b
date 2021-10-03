package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1830:String;
      
      private var var_1266:String;
      
      private var var_1829:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1829 = param1;
         var_1266 = param2;
         var_1830 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1829,var_1266,var_1830];
      }
      
      public function dispose() : void
      {
      }
   }
}
