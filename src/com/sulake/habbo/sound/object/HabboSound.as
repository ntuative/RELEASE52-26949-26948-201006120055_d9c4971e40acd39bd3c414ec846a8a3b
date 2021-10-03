package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1081:SoundChannel = null;
      
      private var var_898:Boolean;
      
      private var var_1080:Sound = null;
      
      private var var_699:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1080 = param1;
         var_1080.addEventListener(Event.COMPLETE,onComplete);
         var_699 = 1;
         var_898 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_898;
      }
      
      public function stop() : Boolean
      {
         var_1081.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_898 = false;
         var_1081 = var_1080.play(0);
         this.volume = var_699;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_699;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1081.position;
      }
      
      public function get length() : Number
      {
         return var_1080.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_699 = param1;
         if(var_1081 != null)
         {
            var_1081.soundTransform = new SoundTransform(var_699);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_898 = true;
      }
   }
}
