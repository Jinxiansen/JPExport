//
//  JPExport.h
//  RecorderingButton
//
//  Created by Jinxiansen on 2017/11/30.
//  Copyright © 2017年 Jinxiansen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPExport : NSObject

/** 字典格式化属性输出 */
+ (NSString *)exportFromDictionary:(NSDictionary *)dictionary;

/** isRemove 是否移除 key 中包含的下划线，并将其后的第一个字母置为大写 */
+ (NSString *)exportFromDictionary:(NSDictionary *)dictionary
                           removeUnderLine:(BOOL)isRemove;

@end
