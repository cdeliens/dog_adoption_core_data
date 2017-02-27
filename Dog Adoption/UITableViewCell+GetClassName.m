//
//  UITableViewCell+GetClassName.m
//  News
//
//  Created by Christian Deliens on 2/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "UITableViewCell+GetClassName.h"

@implementation UITableViewCell (GetClassName)
+(NSString *)getClassName
{
    return NSStringFromClass(self);
}
@end
