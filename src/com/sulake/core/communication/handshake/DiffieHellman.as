package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1185:BigInteger;
      
      private var var_570:BigInteger;
      
      private var var_1458:BigInteger;
      
      private var var_1459:BigInteger;
      
      private var var_1715:BigInteger;
      
      private var var_1716:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1185 = param1;
         var_1458 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1715.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1459 = new BigInteger();
         var_1459.fromRadix(param1,param2);
         var_1715 = var_1459.modPow(var_570,var_1185);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1716.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1185.toString() + ",generator: " + var_1458.toString() + ",secret: " + param1);
         var_570 = new BigInteger();
         var_570.fromRadix(param1,param2);
         var_1716 = var_1458.modPow(var_570,var_1185);
         return true;
      }
   }
}
