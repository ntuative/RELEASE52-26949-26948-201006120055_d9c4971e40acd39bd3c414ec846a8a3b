package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1197:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_817:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1197 = param1;
         var_817 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_817;
      }
      
      public function get identifier() : IID
      {
         return var_1197;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1197 = null;
            while(false)
            {
               var_817.pop();
            }
            var_817 = null;
         }
      }
   }
}
