package com.sulake.room.utils
{
   public class NumberBank
   {
       
      
      private var var_2398:int = 0;
      
      private var var_899:Array;
      
      private var _freeNumbers:Array;
      
      public function NumberBank(param1:int)
      {
         var_899 = [];
         _freeNumbers = [];
         super();
         if(param1 < 0)
         {
            param1 = 0;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _freeNumbers.push(_loc2_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var_899 = null;
         _freeNumbers = null;
         var_2398 = 0;
      }
      
      public function reserveNumber() : int
      {
         var _loc1_:int = 0;
         if(false)
         {
            _loc1_ = _freeNumbers.pop() as int;
            var_899.push(_loc1_);
            return _loc1_;
         }
         return -1;
      }
      
      public function freeNumber(param1:int) : void
      {
         var _loc2_:int = var_899.indexOf(param1);
         if(_loc2_ >= 0)
         {
            var_899.splice(_loc2_,1);
            _freeNumbers.push(param1);
         }
      }
   }
}
