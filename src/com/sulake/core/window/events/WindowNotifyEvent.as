package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1416:String = "WN_CREATED";
      
      public static const const_894:String = "WN_DISABLE";
      
      public static const const_884:String = "WN_DEACTIVATED";
      
      public static const const_829:String = "WN_OPENED";
      
      public static const const_886:String = "WN_CLOSED";
      
      public static const const_857:String = "WN_DESTROY";
      
      public static const const_1530:String = "WN_ARRANGED";
      
      public static const const_503:String = "WN_PARENT_RESIZED";
      
      public static const const_971:String = "WN_ENABLE";
      
      public static const const_849:String = "WN_RELOCATE";
      
      public static const const_844:String = "WN_FOCUS";
      
      public static const const_983:String = "WN_PARENT_RELOCATED";
      
      public static const const_445:String = "WN_PARAM_UPDATED";
      
      public static const const_748:String = "WN_PARENT_ACTIVATED";
      
      public static const const_178:String = "WN_RESIZED";
      
      public static const const_932:String = "WN_CLOSE";
      
      public static const const_851:String = "WN_PARENT_REMOVED";
      
      public static const const_294:String = "WN_CHILD_RELOCATED";
      
      public static const const_765:String = "WN_ENABLED";
      
      public static const const_253:String = "WN_CHILD_RESIZED";
      
      public static const const_1022:String = "WN_MINIMIZED";
      
      public static const const_652:String = "WN_DISABLED";
      
      public static const const_213:String = "WN_CHILD_ACTIVATED";
      
      public static const const_501:String = "WN_STATE_UPDATED";
      
      public static const const_705:String = "WN_UNSELECTED";
      
      public static const const_402:String = "WN_STYLE_UPDATED";
      
      public static const const_1658:String = "WN_UPDATE";
      
      public static const const_512:String = "WN_PARENT_ADDED";
      
      public static const const_711:String = "WN_RESIZE";
      
      public static const const_721:String = "WN_CHILD_REMOVED";
      
      public static const const_1512:String = "";
      
      public static const const_924:String = "WN_RESTORED";
      
      public static const const_344:String = "WN_SELECTED";
      
      public static const const_980:String = "WN_MINIMIZE";
      
      public static const const_860:String = "WN_FOCUSED";
      
      public static const const_1231:String = "WN_LOCK";
      
      public static const const_316:String = "WN_CHILD_ADDED";
      
      public static const const_1035:String = "WN_UNFOCUSED";
      
      public static const const_458:String = "WN_RELOCATED";
      
      public static const const_864:String = "WN_DEACTIVATE";
      
      public static const const_1176:String = "WN_CRETAE";
      
      public static const const_943:String = "WN_RESTORE";
      
      public static const const_362:String = "WN_ACTVATED";
      
      public static const const_1326:String = "WN_LOCKED";
      
      public static const const_377:String = "WN_SELECT";
      
      public static const const_938:String = "WN_MAXIMIZE";
      
      public static const const_885:String = "WN_OPEN";
      
      public static const const_684:String = "WN_UNSELECT";
      
      public static const const_1595:String = "WN_ARRANGE";
      
      public static const const_1305:String = "WN_UNLOCKED";
      
      public static const const_1606:String = "WN_UPDATED";
      
      public static const const_867:String = "WN_ACTIVATE";
      
      public static const const_1306:String = "WN_UNLOCK";
      
      public static const const_891:String = "WN_MAXIMIZED";
      
      public static const const_936:String = "WN_DESTROYED";
      
      public static const const_883:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1674,cancelable);
      }
   }
}
