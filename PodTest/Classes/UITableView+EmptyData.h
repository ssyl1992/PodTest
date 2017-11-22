//
//  UITableView+EmptyData.h
//  booking
//
//  Created by 滕跃兵 on 2017/5/11.
//  Copyright © 2017年 祁迪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (EmptyData)

- (void) tableViewDisplayWitMsg:(NSString *) message ifNecessaryForRowCount:(NSUInteger) rowCount;

@end
