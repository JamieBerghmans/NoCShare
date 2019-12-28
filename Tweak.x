@interface UIActivityContentViewController
- (void) viewDidLoad;
@property NSArray * airDropSlots;
- (void) setAirDropSlots:(NSArray*)arg1;
@end

%hook UIActivityContentViewController
- (void) viewDidLoad {
	self.airDropSlots = [NSMutableArray new];
}

- (void) setAirDropSlots:(NSArray*)arg1 {
	//Do nothing
}
%end