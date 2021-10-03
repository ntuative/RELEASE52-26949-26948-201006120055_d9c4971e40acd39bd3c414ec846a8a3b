package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1580:int = 5;
      
      public static const const_1674:int = 113;
      
      public static const const_1494:int = 29;
      
      public static const const_1536:int = 0;
      
      public static const const_1696:int = 102;
      
      public static const const_1646:int = 25;
      
      public static const const_1487:int = 20;
      
      public static const const_1507:int = 116;
      
      public static const const_1564:int = 114;
      
      public static const const_1559:int = 101;
      
      public static const const_1577:int = 108;
      
      public static const const_1527:int = 112;
      
      public static const const_1638:int = 100;
      
      public static const const_1623:int = 24;
      
      public static const const_1236:int = 10;
      
      public static const const_1675:int = 111;
      
      public static const const_1485:int = 23;
      
      public static const const_1597:int = 26;
      
      public static const const_1348:int = 2;
      
      public static const const_1648:int = 22;
      
      public static const const_1561:int = 17;
      
      public static const const_1496:int = 18;
      
      public static const const_1676:int = 3;
      
      public static const const_1531:int = 109;
      
      public static const const_1191:int = 1;
      
      public static const const_1641:int = 103;
      
      public static const const_1600:int = 11;
      
      public static const const_1518:int = 28;
      
      public static const const_1654:int = 104;
      
      public static const const_1693:int = 13;
      
      public static const const_1523:int = 107;
      
      public static const const_1522:int = 27;
      
      public static const const_1498:int = 118;
      
      public static const const_1652:int = 115;
      
      public static const const_1664:int = 16;
      
      public static const const_1537:int = 19;
      
      public static const const_1603:int = 4;
      
      public static const const_1671:int = 105;
      
      public static const const_1516:int = 117;
      
      public static const const_1616:int = 119;
      
      public static const const_1625:int = 106;
      
      public static const const_1503:int = 12;
      
      public static const const_1636:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1191:
            case const_1236:
               return "banned";
            case const_1348:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
