//
//  FISHorizontalProfileViewController.m
//  horizontal-profile
//
//  Created by Yoseob Lee on 6/30/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISHorizontalProfileViewController.h"

@interface FISHorizontalProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *header;
@property (weak, nonatomic) IBOutlet UIImageView *profile;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *classNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *interestingFactLabel;
@property (weak, nonatomic) IBOutlet UITextView *bodyText;
@property (weak, nonatomic) NSLayoutConstraint *profileY;
@property (weak, nonatomic) IBOutlet UIView *containerView;


@end

@implementation FISHorizontalProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self removeAllConstraints];
//    [self.header setImage:[UIImage imageNamed:@"header"]];
//    [self.profile setImage:[UIImage imageNamed:@"doge"]];
    [self setPortraitConstraints];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)removeAllConstraints
{
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.containerView removeConstraints:self.containerView.constraints];
    
    self.header.translatesAutoresizingMaskIntoConstraints = NO;
    [self.header removeConstraints:self.header.constraints];
    
    self.profile.translatesAutoresizingMaskIntoConstraints = NO;
    [self.profile removeConstraints:self.profile.constraints];
    
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.nameLabel removeConstraints:self.nameLabel.constraints];
    
    self.classNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.classNameLabel removeConstraints:self.classNameLabel.constraints];
    
    self.interestingFactLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.interestingFactLabel removeConstraints:self.interestingFactLabel.constraints];
    
    self.bodyText.translatesAutoresizingMaskIntoConstraints = NO;
    [self.bodyText removeConstraints:self.bodyText.constraints];
}

-(void)setPortraitConstraints
{
    // SET CONSTRAINTS FOR HEADER
    NSLayoutConstraint *headerY = [NSLayoutConstraint constraintWithItem:self.header
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1
                                                                constant:0];
    [self.view addConstraint:headerY];
    
    NSLayoutConstraint *headerWidth = [NSLayoutConstraint constraintWithItem:self.header
                                                               attribute:NSLayoutAttributeWidth
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeWidth
                                                              multiplier:1
                                                                constant:0];
    [self.view addConstraint:headerWidth];
    
    NSLayoutConstraint *headerHeight = [NSLayoutConstraint constraintWithItem:self.header
                                                                    attribute:NSLayoutAttributeHeight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeHeight
                                                                   multiplier:.15
                                                                     constant:0];
    [self.view addConstraint:headerHeight];
    
    // SET CONSTRAINTS FOR CONTAINER
    NSLayoutConstraint *containerX = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1
                                                                       constant:0];
    [self.view addConstraint:containerX];
    
    NSLayoutConstraint *containerY = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:.55
                                                                   constant:0];
    [self.view addConstraint:containerY];
    
    NSLayoutConstraint *containerWidth = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:1
                                                                        constant:0];
    [self.view addConstraint:containerWidth];
    
    NSLayoutConstraint *containerHeight = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:.15
                                                                        constant:0];
    [self.view addConstraint:containerHeight];

    // SET CONSTRAINTS FOR PROFILE
    NSLayoutConstraint *profileLeft = [NSLayoutConstraint constraintWithItem:self.profile
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.containerView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1
                                                                 constant:20];
    [self.containerView addConstraint:profileLeft];
    
    self.profileY = [NSLayoutConstraint constraintWithItem:self.profile
                                                 attribute:NSLayoutAttributeCenterY
                                                 relatedBy:NSLayoutRelationEqual
                                                    toItem:self.containerView
                                                 attribute:NSLayoutAttributeCenterY
                                                multiplier:1
                                                  constant:0];
    [self.containerView addConstraint:self.profileY];
    
    NSLayoutConstraint *profileWidth = [NSLayoutConstraint constraintWithItem:self.profile
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.containerView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:.25
                                                                 constant:0];
    [self.containerView addConstraint:profileWidth];
    
    NSLayoutConstraint *profileHeight = [NSLayoutConstraint constraintWithItem:self.profile
                                                                    attribute:NSLayoutAttributeHeight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.containerView
                                                                    attribute:NSLayoutAttributeHeight
                                                                   multiplier:.85
                                                                     constant:0];
    [self.containerView addConstraint:profileHeight];

    // SET CONSTRAINTS FOR NAME
    NSLayoutConstraint *nameX = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                             attribute:NSLayoutAttributeLeft
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.profile
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1
                                                              constant:20];
    [self.containerView addConstraint:nameX];
    
    NSLayoutConstraint *nameY = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.profile
                                                             attribute:NSLayoutAttributeTop
                                                            multiplier:1
                                                              constant:0];
    [self.containerView addConstraint:nameY];
    
    NSLayoutConstraint *nameWidth = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.containerView
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:.5
                                                                  constant:0];
    [self.containerView addConstraint:nameWidth];
    
    NSLayoutConstraint *nameHeight = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.profile
                                                                 attribute:NSLayoutAttributeHeight
                                                                multiplier:.33
                                                                  constant:0];
    [self.containerView addConstraint:nameHeight];
    
    // SET CONSTRAINTS FOR CLASSNAME
    NSLayoutConstraint *classNameX = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.nameLabel
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1
                                                                   constant:0];
    [self.containerView addConstraint:classNameX];
    
    NSLayoutConstraint *classNameY = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.profile
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1
                                                                   constant:0];
    [self.containerView addConstraint:classNameY];
    
    NSLayoutConstraint *classNameWidth = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.containerView
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:.5
                                                                  constant:0];
    [self.containerView addConstraint:classNameWidth];
    
    NSLayoutConstraint *classNameHeight = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.profile
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:.33
                                                                   constant:0];
    [self.containerView addConstraint:classNameHeight];
    
    // SET CONSTRAINTS FOR INTERESTING FACT
    NSLayoutConstraint *interestingFactX = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                        attribute:NSLayoutAttributeLeft
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.nameLabel
                                                                        attribute:NSLayoutAttributeLeft
                                                                       multiplier:1
                                                                         constant:0];
    [self.containerView addConstraint:interestingFactX];
    
    NSLayoutConstraint *interestingFactY = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                        attribute:NSLayoutAttributeBottom
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.profile
                                                                        attribute:NSLayoutAttributeBottom
                                                                       multiplier:1
                                                                         constant:0];
    [self.containerView addConstraint:interestingFactY];
    
    NSLayoutConstraint *interestingFactWidth = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.containerView
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:.5
                                                                  constant:0];
    [self.containerView addConstraint:interestingFactWidth];
    
    NSLayoutConstraint *interestingFactHeight = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.profile
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:.33
                                                                   constant:0];
    [self.containerView addConstraint:interestingFactHeight];
    
    // SET CONSTRAINTS FOR BODYTEXT
    NSLayoutConstraint *bodyTextTop = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeBottom
                                                                  multiplier:1
                                                                    constant:25];
    [self.view addConstraint:bodyTextTop];
    
    NSLayoutConstraint *bodyTextBottom = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                      attribute:NSLayoutAttributeBottom
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1
                                                                       constant:-20];
    [self.view addConstraint:bodyTextBottom];
    
    NSLayoutConstraint *bodyTextWidth = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeWidth
                                                                    multiplier:1
                                                                      constant:-40];
    [self.view addConstraint:bodyTextWidth];
    
    NSLayoutConstraint *bodyTextCenter = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1
                                                                       constant:0];
    [self.view addConstraint:bodyTextCenter];
}

-(void)setLandscapeConstraints
{
    // SET CONSTRAINTS FOR CONTAINER
    NSLayoutConstraint *containerX = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:0];
    [self.view addConstraint:containerX];
    
    NSLayoutConstraint *containerY = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:.55
                                                                   constant:0];
    [self.view addConstraint:containerY];
    
    NSLayoutConstraint *containerWidth = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeWidth
                                                                     multiplier:1
                                                                       constant:0];
    [self.view addConstraint:containerWidth];
    
    NSLayoutConstraint *containerHeight = [NSLayoutConstraint constraintWithItem:self.containerView
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:.25
                                                                        constant:0];
    [self.view addConstraint:containerHeight];
    
    // SET CONSTRAINTS FOR PROFILE
    NSLayoutConstraint *profileLeft = [NSLayoutConstraint constraintWithItem:self.profile
                                                                   attribute:NSLayoutAttributeLeft
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeLeft
                                                                  multiplier:1
                                                                    constant:20];
    [self.containerView addConstraint:profileLeft];
    
    self.profileY = [NSLayoutConstraint constraintWithItem:self.profile
                                                 attribute:NSLayoutAttributeCenterY
                                                 relatedBy:NSLayoutRelationEqual
                                                    toItem:self.containerView
                                                 attribute:NSLayoutAttributeCenterY
                                                multiplier:1
                                                  constant:0];
    [self.containerView addConstraint:self.profileY];
    
    NSLayoutConstraint *profileWidth = [NSLayoutConstraint constraintWithItem:self.profile
                                                                    attribute:NSLayoutAttributeWidth
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.containerView
                                                                    attribute:NSLayoutAttributeWidth
                                                                   multiplier:.15
                                                                     constant:0];
    [self.containerView addConstraint:profileWidth];
    
    NSLayoutConstraint *profileHeight = [NSLayoutConstraint constraintWithItem:self.profile
                                                                     attribute:NSLayoutAttributeHeight
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.containerView
                                                                     attribute:NSLayoutAttributeHeight
                                                                    multiplier:.85
                                                                      constant:0];
    [self.containerView addConstraint:profileHeight];
    
    // SET CONSTRAINTS FOR NAME
    NSLayoutConstraint *nameX = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                             attribute:NSLayoutAttributeLeft
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.profile
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1
                                                              constant:20];
    [self.containerView addConstraint:nameX];
    
    NSLayoutConstraint *nameY = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                             attribute:NSLayoutAttributeTop
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.profile
                                                             attribute:NSLayoutAttributeTop
                                                            multiplier:1
                                                              constant:0];
    [self.containerView addConstraint:nameY];
    
    NSLayoutConstraint *nameWidth = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.containerView
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:.5
                                                                  constant:0];
    [self.containerView addConstraint:nameWidth];
    
    NSLayoutConstraint *nameHeight = [NSLayoutConstraint constraintWithItem:self.nameLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.profile
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:.33
                                                                   constant:0];
    [self.containerView addConstraint:nameHeight];
    
    // SET CONSTRAINTS FOR CLASSNAME
    NSLayoutConstraint *classNameX = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.nameLabel
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1
                                                                   constant:0];
    [self.containerView addConstraint:classNameX];
    
    NSLayoutConstraint *classNameY = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.profile
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1
                                                                   constant:0];
    [self.containerView addConstraint:classNameY];
    
    NSLayoutConstraint *classNameWidth = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.containerView
                                                                      attribute:NSLayoutAttributeWidth
                                                                     multiplier:.5
                                                                       constant:0];
    [self.containerView addConstraint:classNameWidth];
    
    NSLayoutConstraint *classNameHeight = [NSLayoutConstraint constraintWithItem:self.classNameLabel
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.profile
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:.33
                                                                        constant:0];
    [self.containerView addConstraint:classNameHeight];
    
    // SET CONSTRAINTS FOR INTERESTING FACT
    NSLayoutConstraint *interestingFactX = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                        attribute:NSLayoutAttributeLeft
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.nameLabel
                                                                        attribute:NSLayoutAttributeLeft
                                                                       multiplier:1
                                                                         constant:0];
    [self.containerView addConstraint:interestingFactX];
    
    NSLayoutConstraint *interestingFactY = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                        attribute:NSLayoutAttributeBottom
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.profile
                                                                        attribute:NSLayoutAttributeBottom
                                                                       multiplier:1
                                                                         constant:0];
    [self.containerView addConstraint:interestingFactY];
    
    NSLayoutConstraint *interestingFactWidth = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.containerView
                                                                            attribute:NSLayoutAttributeWidth
                                                                           multiplier:.5
                                                                             constant:0];
    [self.containerView addConstraint:interestingFactWidth];
    
    NSLayoutConstraint *interestingFactHeight = [NSLayoutConstraint constraintWithItem:self.interestingFactLabel
                                                                             attribute:NSLayoutAttributeHeight
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.profile
                                                                             attribute:NSLayoutAttributeHeight
                                                                            multiplier:.33
                                                                              constant:0];
    [self.containerView addConstraint:interestingFactHeight];
    
    // SET CONSTRAINTS FOR BODYTEXT
    NSLayoutConstraint *bodyTextTop = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeBottom
                                                                  multiplier:1
                                                                    constant:25];
    [self.view addConstraint:bodyTextTop];
    
    NSLayoutConstraint *bodyTextBottom = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                      attribute:NSLayoutAttributeBottom
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeBottom
                                                                     multiplier:1
                                                                       constant:-20];
    [self.view addConstraint:bodyTextBottom];
    
    NSLayoutConstraint *bodyTextWidth = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeWidth
                                                                    multiplier:1
                                                                      constant:-40];
    [self.view addConstraint:bodyTextWidth];
    
    NSLayoutConstraint *bodyTextCenter = [NSLayoutConstraint constraintWithItem:self.bodyText
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1
                                                                       constant:0];
    [self.view addConstraint:bodyTextCenter];
}

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
        
        if (UIInterfaceOrientationIsLandscape(orientation)) {
            
            NSLog(@"We are in landscape:");
            [self removeAllConstraints];
            [self setLandscapeConstraints];
//            self.profileY.constant = 40;
            
            
        } else if (UIInterfaceOrientationIsPortrait(orientation)) {
            
            NSLog(@"We are in portrait mode.");
            
            [self removeAllConstraints];
            [self setPortraitConstraints];
//            self.profileY.constant = 140;

        }
    } completion:nil];
}

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    [super traitCollectionDidChange:previousTraitCollection];
    if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass) || self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass)
    {
        
    }
}

@end
