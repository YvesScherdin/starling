// =================================================================================================
//
//	Starling Framework
//	Copyright Gamua GmbH. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package starling.events;

import openfl.Vector;

import starling.utils.StringUtil;

/** Event objects are passed as parameters to event listeners when an event occurs.  
 *  This is Starling's version of the Flash Event class. 
 *
 *  <p>EventDispatchers create instances of this class and send them to registered listeners. 
 *  An event object contains information that characterizes an event, most importantly the 
 *  event type and if the event bubbles. The target of an event is the object that 
 *  dispatched it.</p>
 * 
 *  <p>For some event types, this information is sufficient; other events may need additional 
 *  information to be carried to the listener. In that case, you can subclass "Event" and add 
 *  properties with all the information you require. The "EnterFrameEvent" is an example for 
 *  this practice; it adds a property about the time that has passed since the last frame.</p>
 * 
 *  <p>Furthermore, the event class contains methods that can stop the event from being 
 *  processed by other listeners - either completely or at the next bubble stage.</p>
 * 
 *  @see EventDispatcher
 */

@:jsRequire("starling/events/Event", "default")

extern class Event
{
    /** Event type for a display object that is added to a parent. */
    public static var ADDED:String;
    /** Event type for a display object that is added to the stage */
    public static var ADDED_TO_STAGE:String;
    /** Event type for a display object that is entering a new frame. */
    public static var ENTER_FRAME:String;
    /** Event type for a display object that is removed from its parent. */
    public static var REMOVED:String;
    /** Event type for a display object that is removed from the stage. */
    public static var REMOVED_FROM_STAGE:String;
    /** Event type for a triggered button. */
    public static var TRIGGERED:String;
    /** Event type for a resized Flash Player. */
    public static var RESIZE:String;
    /** Event type that may be used whenever something finishes. */
    public static var COMPLETE:String;
    /** Event type for a (re)created stage3D rendering context. */
    public static var CONTEXT3D_CREATE:String;
    /** Event type that is dispatched by the Starling instance directly before rendering. */
    public static var RENDER:String;
    /** Event type that indicates that the root DisplayObject has been created. */
    public static var ROOT_CREATED:String;
    /** Event type for an animated object that requests to be removed from the juggler. */
    public static var REMOVE_FROM_JUGGLER:String;
    /** Event type that is dispatched by the AssetManager after a context loss. */
    public static var TEXTURES_RESTORED:String;
    /** Event type that is dispatched by the AssetManager when a file/url cannot be loaded. */
    public static var IO_ERROR:String;
    /** Event type that is dispatched by the AssetManager when a file/url cannot be loaded. */
    public static var SECURITY_ERROR:String;
    /** Event type that is dispatched by the AssetManager when an xml or json file couldn't
     * be parsed. */
    public static var PARSE_ERROR:String;
    /** Event type that is dispatched by the Starling instance when it encounters a problem
     * from which it cannot recover, e.g. a lost device context. */
    public static var FATAL_ERROR:String;

    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var CHANGE:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var CANCEL:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var SCROLL:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var OPEN:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var CLOSE:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var SELECT:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var READY:String;
    /** An event type to be utilized in custom events. Not used by Starling right now. */
    public static var UPDATE:String;

    /** Creates an event object that can be passed to listeners. */
    public function new(type:String, bubbles:Bool=false, data:Dynamic=null);
    
    /** Prevents listeners at the next bubble stage from receiving the event. */
    public function stopPropagation():Void;
    
    /** Prevents any other listeners from receiving the event. */
    public function stopImmediatePropagation():Void;
    
    /** Returns a description of the event, containing type and bubble information. */
    public function toString():String;
    
    /** Indicates if event will bubble. */
    public var bubbles(default, null):Bool;
    
    /** The object that dispatched the event. */
    public var target(default, null):EventDispatcher;
    
    /** The object the event is currently bubbling at. */
    public var currentTarget(default, null):EventDispatcher;
    
    /** A string that identifies the event. */
    public var type(default, null):String;
    
    /** Arbitrary data that is attached to the event. */
    public var data(default, null):Dynamic;
}