package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_436:String;
      
      private var var_2401:String;
      
      private var var_2402:int;
      
      private var var_2403:int;
      
      private var var_602:String;
      
      private var var_1390:String;
      
      private var _name:String;
      
      private var var_547:int;
      
      private var var_960:int;
      
      private var var_2399:int;
      
      private var _respectTotal:int;
      
      private var var_2400:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2403;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1390;
      }
      
      public function get customData() : String
      {
         return this.var_2401;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_547;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2402;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2400;
      }
      
      public function get figure() : String
      {
         return this.var_436;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_602;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_436 = param1.readString();
         this.var_602 = param1.readString();
         this.var_2401 = param1.readString();
         this.var_1390 = param1.readString();
         this.var_2399 = param1.readInteger();
         this.var_2400 = param1.readString();
         this.var_2402 = param1.readInteger();
         this.var_2403 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_960 = param1.readInteger();
         this.var_547 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2399;
      }
      
      public function get respectLeft() : int
      {
         return this.var_960;
      }
   }
}
