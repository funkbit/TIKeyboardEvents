/**
 * Copyright 2011 Funkbit AS
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "NoFunkbitKeyboardeventsModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation NoFunkbitKeyboardeventsModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"14dd4230-4054-4c33-a713-fd29bec30548";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"no.funkbit.keyboardevents";
}

#pragma mark Lifecycle

-(void)startup
{
	// This method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
    // Register for keyboard notifications
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [nc addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// This method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
    // Unregister keyboard notifications
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [nc removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Event handlers

- (void)keyboardWillShow:(NSNotification *)aNotification
{   
    NSDictionary* userInfo = [aNotification userInfo];
    
    // Get height of keyboard
    CGRect keyboardEndFrame;
    [[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] getValue:&keyboardEndFrame];
    NSNumber *keyboardHeight = [NSNumber numberWithFloat:keyboardEndFrame.size.height];
    
    // Event object
    NSMutableDictionary *event = [NSMutableDictionary dictionary];
    [event setValue:keyboardHeight forKey:@"keyboardHeight"];
    
    [self fireEvent:@"keyboardWillShow" withObject:event];
}

- (void)keyboardWillHide:(NSNotification *)aNotification
{    
    [self fireEvent:@"keyboardWillHide" withObject:nil];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)example:(id)args
{
	// example method
	return @"hello world";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)exampleProp:(id)value
{
	// example property setter
}

@end
