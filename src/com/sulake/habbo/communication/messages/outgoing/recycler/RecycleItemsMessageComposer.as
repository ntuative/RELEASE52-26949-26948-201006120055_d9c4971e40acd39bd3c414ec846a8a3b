package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_841:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_841 = new Array();
         var_841.push(param1.length);
         var_841 = var_841.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_841;
      }
   }
}
