package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1411:int = 4;
      
      public static const const_670:int = 3;
      
      public static const const_764:int = 2;
      
      public static const const_982:int = 1;
       
      
      private var var_1998:String;
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_1996:Boolean;
      
      private var var_913:String;
      
      private var var_878:PublicRoomData;
      
      private var var_1997:int;
      
      private var _index:int;
      
      private var var_1994:String;
      
      private var _type:int;
      
      private var var_1845:String;
      
      private var var_879:GuestRoomData;
      
      private var var_1995:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1998 = param1.readString();
         var_1995 = param1.readString();
         var_1996 = param1.readInteger() == 1;
         var_1994 = param1.readString();
         var_913 = param1.readString();
         var_1997 = param1.readInteger();
         var_1804 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_982)
         {
            var_1845 = param1.readString();
         }
         else if(_type == const_670)
         {
            var_878 = new PublicRoomData(param1);
         }
         else if(_type == const_764)
         {
            var_879 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1997;
      }
      
      public function get popupCaption() : String
      {
         return var_1998;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1996;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_982)
         {
            return 0;
         }
         if(this.type == const_764)
         {
            return this.var_879.maxUserCount;
         }
         if(this.type == const_670)
         {
            return this.var_878.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1995;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_879 != null)
         {
            this.var_879.dispose();
            this.var_879 = null;
         }
         if(this.var_878 != null)
         {
            this.var_878.dispose();
            this.var_878 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_879;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1994;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_878;
      }
      
      public function get picRef() : String
      {
         return var_913;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1845;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
