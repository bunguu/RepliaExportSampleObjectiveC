#import "MyViewController.h"
#import "LoginView.h"
#import "PasswordView.h"
#import "EmailView.h"

@implementation MyViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self configureView];
}

- (void)configureView {
	self.scrollView = [UIScrollView new];
	self.scrollView.frame = self.view.bounds;
	self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:self.scrollView];

	self.contentView = [UIView new];
	self.contentView.frame = CGRectMake(0, 0, 320, 568);
	self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	self.contentView.backgroundColor = [UIColor whiteColor];
	[self.scrollView addSubview:self.contentView];

	self.bgImageView = [UIImageView new];
	self.bgImageView.image = [UIImage imageNamed:@"bg"];
	self.bgImageView.frame = CGRectMake(0, 0, 320, 568);
	self.bgImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.bgImageView];

	self.birdgroupImageView = [UIImageView new];
	self.birdgroupImageView.image = [UIImage imageNamed:@"birdgroup"];
	self.birdgroupImageView.frame = CGRectMake(4, 394, 151.5, 179.5);
	self.birdgroupImageView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.birdgroupImageView];

	self.catgroupImageView = [UIImageView new];
	self.catgroupImageView.image = [UIImage imageNamed:@"catgroup"];
	self.catgroupImageView.frame = CGRectMake(150.5, 394, 164.5, 162);
	self.catgroupImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.catgroupImageView];

	self.formView = [UIView new];
	self.formView.frame = CGRectMake(30, 232, 260, 151);
	self.formView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.formView];

	self.loginView = [LoginView new];
	self.loginView.frame = CGRectMake(0, 104.5, 260, 46.5);
	self.loginView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.formView addSubview:self.loginView];

	self.passwordView = [PasswordView new];
	self.passwordView.frame = CGRectMake(0, 51.5, 260, 43);
	self.passwordView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.formView addSubview:self.passwordView];

	self.emailView = [EmailView new];
	self.emailView.frame = CGRectMake(0, 0, 260, 43);
	self.emailView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.formView addSubview:self.emailView];

	self.gIngLabel = [UILabel new];
	self.gIngLabel.textAlignment = NSTextAlignmentCenter;
	self.gIngLabel.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
	self.gIngLabel.font = [UIFont fontWithName:@"Avenir-Roman" size:32];
	self.gIngLabel.text = NSLocalizedString(@"G-ing",nil);
	self.gIngLabel.frame = CGRectMake(0, 185, 318, 44);
	self.gIngLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.gIngLabel];

	self.beegroupImageView = [UIImageView new];
	self.beegroupImageView.image = [UIImage imageNamed:@"beegroup"];
	self.beegroupImageView.frame = CGRectMake(165, 37.5, 150, 150);
	self.beegroupImageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.beegroupImageView];

	self.sungroupImageView = [UIImageView new];
	self.sungroupImageView.image = [UIImage imageNamed:@"sungroup"];
	self.sungroupImageView.frame = CGRectMake(5, 17.5, 150, 170);
	self.sungroupImageView.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

	[self.contentView addSubview:self.sungroupImageView];

	self.contentView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.contentView.bounds.size.height);
	self.scrollView.contentSize = self.contentView.frame.size;
}

@end
