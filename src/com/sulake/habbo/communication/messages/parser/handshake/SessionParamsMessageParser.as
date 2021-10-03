package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SessionParamsMessageParser implements IMessageParser
   {
       
      
      protected var var_1436:Boolean;
      
      protected var var_2342:Boolean;
      
      protected var var_1435:Boolean;
      
      protected var var_777:String;
      
      protected var _confPartnerIntegration:Boolean;
      
      protected var var_2341:String;
      
      protected var var_2340:Boolean;
      
      protected var var_1434:Boolean;
      
      protected var var_1437:Boolean;
      
      protected var var_1438:Boolean;
      
      public function SessionParamsMessageParser()
      {
         super();
      }
      
      public function get tutorialEnabled() : Boolean
      {
         return var_2342;
      }
      
      public function get parentEmailRequired() : Boolean
      {
         return var_1434;
      }
      
      public function flush() : Boolean
      {
         var_1438 = false;
         var_1437 = false;
         var_777 = "";
         var_1434 = false;
         var_1436 = false;
         var_1435 = false;
         _confPartnerIntegration = false;
         var_2340 = false;
         var_2341 = "";
         var_2342 = false;
         return true;
      }
      
      public function get tracking_header() : String
      {
         return var_2341;
      }
      
      public function get parentEmailRequiredInReRegistration() : Boolean
      {
         return var_1436;
      }
      
      public function get allowProfileEditing() : Boolean
      {
         return var_2340;
      }
      
      public function get allowDirectEmail() : Boolean
      {
         return var_1435;
      }
      
      public function get voucher() : Boolean
      {
         return var_1437;
      }
      
      public function get confPartnerIntegration() : Boolean
      {
         return _confPartnerIntegration;
      }
      
      public function get coppa() : Boolean
      {
         return var_1438;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:int = param1.readInteger();
         Logger.log("[Parser.SessionParams] Got " + _loc2_ + " pairs");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readInteger();
            Logger.log("[Parser.SessionParams] Got id: " + _loc4_);
            switch(_loc4_)
            {
               case 0:
                  _loc5_ = param1.readInteger();
                  var_1438 = _loc5_ > 0;
                  break;
               case 1:
                  _loc5_ = param1.readInteger();
                  var_1437 = _loc5_ > 0;
                  break;
               case 2:
                  _loc5_ = param1.readInteger();
                  var_1434 = _loc5_ > 0;
                  break;
               case 3:
                  _loc5_ = param1.readInteger();
                  var_1436 = _loc5_ > 0;
                  break;
               case 4:
                  _loc5_ = param1.readInteger();
                  var_1435 = _loc5_ > 0;
                  break;
               case 5:
                  _loc6_ = param1.readString();
                  break;
               case 6:
                  _loc5_ = param1.readInteger();
                  break;
               case 7:
                  _loc5_ = param1.readInteger();
                  break;
               case 8:
                  _loc7_ = param1.readString();
                  break;
               case 9:
                  _loc5_ = param1.readInteger();
                  break;
               default:
                  Logger.log("Unknown id: " + _loc4_);
                  break;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function get date() : String
      {
         return var_777;
      }
   }
}
