//
//  UITableView+EmptyData.m
//  booking
//
//  Created by 滕跃兵 on 2017/5/11.
//  Copyright © 2017年 祁迪. All rights reserved.
//

#import "UITableView+EmptyData.h"

@implementation UITableView (EmptyData)

- (void) tableViewDisplayWitMsg:(NSString *) message ifNecessaryForRowCount:(NSUInteger) rowCount
{
    if (rowCount == 0) {
        
        UIView *view = [[UIView alloc] initWithFrame:self.bounds];
        view.backgroundColor = [UIColor whiteColor];
        
        UILabel *messageLabel = [UILabel new];
        messageLabel.frame = CGRectMake(0, 0, view.bounds.size.width - 100, 160);
       
        
        messageLabel.text = message;
        messageLabel.numberOfLines = 0;
        messageLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        messageLabel.textColor = [UIColor lightGrayColor];
//        messageLabel.backgroundColor = [UIColor redColor];
        messageLabel.textAlignment = NSTextAlignmentCenter;
//        [messageLabel sizeToFit];
        messageLabel.center = view.center;
        [view addSubview:messageLabel];
        
        self.backgroundView = view;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    } else {
        self.backgroundView = nil;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
}

@end
