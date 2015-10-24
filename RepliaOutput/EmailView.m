#import "EmailView.h"

@implementation EmailView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		[self commonInit];
	}
	return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self commonInit];
	}
	return self;
}

- (void)commonInit {
	self.bounds = CGRectMake(0, 0, 260, 43);

	self.formView3 = [UIView new];
	self.formView3.alpha = 0.8;
	self.formView3.frame = CGRectMake(0, 0, 260, 43);
	self.formView3.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.formView3.layer.cornerRadius = 15;
	self.formView3.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
	[self addSubview:self.formView3];

	self.eMailLabel = [UILabel new];
	self.eMailLabel.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
	self.eMailLabel.font = [UIFont fontWithName:@"ArialMT" size:15];
	self.eMailText = NSLocalizedString(@"E-Mail",nil);
	self.eMailLabel.frame = CGRectMake(47.5, 13, 198, 17);
	self.eMailLabel.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

	[self addSubview:self.eMailLabel];

	self.iconemailImageView = [UIImageView new];
	self.iconemailImageView.image = [UIImage imageNamed:@"iconemail"];
	self.iconemailImageView.frame = CGRectMake(14.5, 16.5, 18.5, 13);
	self.iconemailImageView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

	[self addSubview:self.iconemailImageView];

}

# pragma mark text properties

- (void)setEMailText:(NSString*)text {
	if (![_eMailText isEqualToString:text]) {
		_eMailText = [text copy];
		self.eMailLabel.text = _eMailText;
	}
}

# pragma mark image properties

- (void)setIconemailImage:(UIImage*)image {
	_iconemailImage = image;
	self.iconemailImageView.image = image;
}

@end
