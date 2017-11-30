//
//  JPropertyExport.h
//  RecorderingButton
//
//  Created by Jinxiansen on 2017/11/30.
//  Copyright © 2017年 Jinxiansen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPropertyExport : NSObject

/** 字典格式化属性输出 */
+ (NSString *)propertyExportFromDictionary:(NSDictionary *)dictionary;

/** isRemove 是否移除 key 中包含的下划线，并将其后的第一个字母置为大写 */
+ (NSString *)propertyExportFromDictionary:(NSDictionary *)dictionary
                           removeUnderLine:(BOOL)isRemove;

@end
