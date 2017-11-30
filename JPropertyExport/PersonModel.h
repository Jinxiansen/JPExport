//
//  PersonModel.h
//  JPropertyExport
//
//  Created by Jinxiansen on 2017/11/30.
//  Copyright © 2017年 Jinxiansen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject

/** 年龄, 1-200 */
@property (nonatomic, strong) NSNumber *age;
/** 性别,1男 2女 */
@property (nonatomic, copy) NSString *sex;
/** <#name#> */
@property (nonatomic, copy) NSString *name;
/** <#blog#> */
@property (nonatomic, copy) NSString *blog;
/** <#course#> */
@property (nonatomic, strong) NSArray *course;


@end
