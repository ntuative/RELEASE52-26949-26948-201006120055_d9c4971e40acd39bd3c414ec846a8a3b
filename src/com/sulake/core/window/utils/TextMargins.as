package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_821:int;
      
      private var _right:int;
      
      private var var_820:int;
      
      private var var_822:int;
      
      private var var_189:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_820 = param1;
         var_822 = param2;
         _right = param3;
         var_821 = param4;
         var_189 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_821 = param1;
         var_189(this);
      }
      
      public function get left() : int
      {
         return var_820;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_820 == 0 && _right == 0 && var_822 == 0 && var_821 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_822 = param1;
         var_189(this);
      }
      
      public function get top() : int
      {
         return var_822;
      }
      
      public function set left(param1:int) : void
      {
         var_820 = param1;
         var_189(this);
      }
      
      public function get bottom() : int
      {
         return var_821;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_820,var_822,_right,var_821,param1);
      }
      
      public function dispose() : void
      {
         var_189 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_189(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
