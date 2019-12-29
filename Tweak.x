@interface UIActivityContentViewController
- (void) setAirDropSlots:(NSArray*)arg1;
@end

@interface _UIActivityUserDefaultsViewController
@property NSArray * favoritesProxies;
@property NSArray * suggestionProxies;
- (void) setFavoritesProxies:(NSArray*)arg1;
- (void) setSuggestionProxies:(NSArray*)arg1;
- (void) makeEditable:(NSArray*)arg1;
@end

@interface UserAP
@property BOOL canEdit;
@property BOOL canMove;
@end


%hook UIActivityContentViewController
- (void) setAirDropSlots:(NSArray*)arg1 {
	//Do nothing
}
%end

%hook _UIActivityUserDefaultsViewController
- (void) setFavoritesProxies:(NSArray*)arg1 {
	%orig;
	[self makeEditable:self.favoritesProxies];
}

- (void) setSuggestionProxies:(NSArray*)arg1 {
	%orig;
	[self makeEditable:self.suggestionProxies];
}

%new
- (void) makeEditable:(NSArray*)arg1 {
	for (UserAP * ap in arg1) {
		ap.canEdit = YES;
		ap.canMove = YES;
	}
}

%end