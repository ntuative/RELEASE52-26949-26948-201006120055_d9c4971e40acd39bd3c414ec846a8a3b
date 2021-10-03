package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_436:String;
      
      private var var_1391:String;
      
      private var var_1389:String;
      
      private var var_1255:int;
      
      private var var_631:int;
      
      private var var_1390:String;
      
      private var _name:String;
      
      private var var_1322:Boolean;
      
      private var var_798:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_631 = param1.readInteger();
         this.var_798 = param1.readBoolean();
         this.var_1322 = param1.readBoolean();
         this.var_436 = param1.readString();
         this.var_1255 = param1.readInteger();
         this.var_1389 = param1.readString();
         this.var_1391 = param1.readString();
         this.var_1390 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_631;
      }
      
      public function get realName() : String
      {
         return var_1390;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1389;
      }
      
      public function get categoryId() : int
      {
         return var_1255;
      }
      
      public function get online() : Boolean
      {
         return var_798;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1322;
      }
      
      public function get lastAccess() : String
      {
         return var_1391;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
   }
}
