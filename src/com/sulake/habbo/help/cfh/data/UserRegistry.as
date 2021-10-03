package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1134:int = 80;
       
      
      private var var_511:Map;
      
      private var var_741:String = "";
      
      private var var_1307:Array;
      
      public function UserRegistry()
      {
         var_511 = new Map();
         var_1307 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_511.getValue(var_1307.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_741;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_511.getValue(param1) != null)
         {
            var_511.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_741);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_741 == "")
         {
            var_1307.push(param1);
         }
         var_511.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_511;
      }
      
      public function unregisterRoom() : void
      {
         var_741 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_511.length > const_1134)
         {
            _loc1_ = var_511.getKey(0);
            var_511.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_741 = param1;
         if(var_741 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
