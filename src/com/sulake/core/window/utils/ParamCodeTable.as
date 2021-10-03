package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_126;
         param1["bound_to_parent_rect"] = const_88;
         param1["child_window"] = const_1031;
         param1["embedded_controller"] = const_363;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_51;
         param1["internal_event_handling"] = const_657;
         param1["mouse_dragging_target"] = const_205;
         param1["mouse_dragging_trigger"] = const_358;
         param1["mouse_scaling_target"] = const_271;
         param1["mouse_scaling_trigger"] = const_380;
         param1["horizontal_mouse_scaling_trigger"] = const_225;
         param1["vertical_mouse_scaling_trigger"] = const_241;
         param1["observe_parent_input_events"] = const_987;
         param1["optimize_region_to_layout_size"] = const_492;
         param1["parent_window"] = const_837;
         param1["relative_horizontal_scale_center"] = const_185;
         param1["relative_horizontal_scale_fixed"] = const_125;
         param1["relative_horizontal_scale_move"] = const_318;
         param1["relative_horizontal_scale_strech"] = const_258;
         param1["relative_scale_center"] = const_1000;
         param1["relative_scale_fixed"] = const_632;
         param1["relative_scale_move"] = const_1029;
         param1["relative_scale_strech"] = const_1034;
         param1["relative_vertical_scale_center"] = const_182;
         param1["relative_vertical_scale_fixed"] = const_130;
         param1["relative_vertical_scale_move"] = const_341;
         param1["relative_vertical_scale_strech"] = const_278;
         param1["on_resize_align_left"] = const_617;
         param1["on_resize_align_right"] = const_381;
         param1["on_resize_align_center"] = const_449;
         param1["on_resize_align_top"] = const_534;
         param1["on_resize_align_bottom"] = const_413;
         param1["on_resize_align_middle"] = const_396;
         param1["on_accommodate_align_left"] = const_897;
         param1["on_accommodate_align_right"] = const_408;
         param1["on_accommodate_align_center"] = const_736;
         param1["on_accommodate_align_top"] = const_1028;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_728;
         param1["route_input_events_to_parent"] = const_474;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_870;
         param1["scalable_with_mouse"] = const_1050;
         param1["reflect_horizontal_resize_to_parent"] = const_470;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_292;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
