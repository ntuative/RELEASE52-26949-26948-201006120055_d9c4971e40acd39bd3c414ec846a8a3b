package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_404:uint;
      
      private var var_1030:IUnknown;
      
      private var var_1217:String;
      
      private var var_1029:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1029 = param1;
         var_1217 = getQualifiedClassName(var_1029);
         var_1030 = param2;
         var_404 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1029;
      }
      
      public function get disposed() : Boolean
      {
         return var_1030 == null;
      }
      
      public function get references() : uint
      {
         return var_404;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_404) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1030;
      }
      
      public function get iis() : String
      {
         return var_1217;
      }
      
      public function reserve() : uint
      {
         return ++var_404;
      }
      
      public function dispose() : void
      {
         var_1029 = null;
         var_1217 = null;
         var_1030 = null;
         var_404 = 0;
      }
   }
}
