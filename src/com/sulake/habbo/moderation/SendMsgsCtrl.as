package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1275:String;
      
      private var _disposed:Boolean;
      
      private var var_1528:String;
      
      private var var_1274:int;
      
      private var _main:ModerationManager;
      
      private var var_900:IDropMenuWindow;
      
      private var var_419:ITextFieldWindow;
      
      private var var_52:IFrameWindow;
      
      private var var_302:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         _main = param1;
         var_1274 = param2;
         var_1528 = param3;
         var_1275 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_207)
         {
            return;
         }
         if(!var_302)
         {
            return;
         }
         var_419.text = "";
         var_302 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
      
      public function getId() : String
      {
         return var_1528;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_302 || false)
         {
            _main.windowManager.alert("Alert","You must input a message to the user",0,method_5);
            return;
         }
         _main.connection.send(new ModMessageMessageComposer(var_1274,var_419.text,var_1275));
         this.dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(_main.getXmlWindow("send_msgs"));
         var_52.caption = "Msg To: " + var_1528;
         var_52.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_419 = ITextFieldWindow(var_52.findChildByName("message_input"));
         var_419.procedure = onInputClick;
         var_900 = IDropMenuWindow(var_52.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_900);
         var_900.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_52.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + _main.initMsg.messageTemplates.length);
         param1.populate(_main.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_52 != null)
         {
            var_52.destroy();
            var_52 = null;
         }
         var_900 = null;
         var_419 = null;
         _main = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_62)
         {
            return;
         }
         var _loc3_:String = _main.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_302 = false;
            var_419.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function method_5(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1220;
      }
   }
}
