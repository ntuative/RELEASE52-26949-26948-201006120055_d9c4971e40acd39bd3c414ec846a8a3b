package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2385:Boolean;
      
      private var var_2384:int;
      
      private var var_2383:Boolean;
      
      private var var_1663:String;
      
      private var var_1390:String;
      
      private var var_2148:int;
      
      private var var_2314:String;
      
      private var var_2386:String;
      
      private var var_2313:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2148 = param1.readInteger();
         this.var_1663 = param1.readString();
         this.var_2314 = param1.readString();
         this.var_2385 = param1.readBoolean();
         this.var_2383 = param1.readBoolean();
         param1.readString();
         this.var_2384 = param1.readInteger();
         this.var_2313 = param1.readString();
         this.var_2386 = param1.readString();
         this.var_1390 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1390;
      }
      
      public function get avatarName() : String
      {
         return this.var_1663;
      }
      
      public function get avatarId() : int
      {
         return this.var_2148;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2385;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2386;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2313;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2383;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2314;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2384;
      }
   }
}
