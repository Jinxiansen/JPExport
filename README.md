![](image/JPExport2.png)

### JPExport 仅用于网络数据 responseObject 解析生成 property 。

Mac 版、Swift版待续…

支持 NSArray、NSDictionary、NSString、NSNumber、BOOL  。

# Screenshots

![](image/exportGif.gif)


##### 示例如下：

### 原始数据

```

{
    errorcode = 2;
    data = 
    {
        age = 19;
        sex = "male";
        name = Jinxiansen;
        blog = "jinxiansen.com";
        course = 
        (
            {
                Chinese = 98;
                "Class_hour" = 53;
                population = "1.5 billion";
            },
            {
                color = red;
            },
            {
                English = 39;
                "class_6our" = 48;
                "class_size" = 40;
                "teacher_name" = jobs;
            }
        );
    };
}

```

### 原始数据转换

```

/** English */
@property (nonatomic, copy) NSString *English;
/** class_size */
@property (nonatomic, strong) NSNumber *class_size;
/** teacher_name */
@property (nonatomic, copy) NSString *teacher_name;
/** class_6our */
@property (nonatomic, copy) NSString *class_6our;

```

### 大小写转换

```

/** english */
@property (nonatomic, copy) NSString *english;
/** classSize */
@property (nonatomic, strong) NSNumber *classSize;
/** class6our */
@property (nonatomic, copy) NSString *class6our;
/** teacherName */
@property (nonatomic, copy) NSString *teacherName;


```


# Requirements

 * 支持 iOS 8.0 + 
 * 目前仅限 Objective-C 

 
# Manually
	1. 需将 JPExport.h 和 .m 导入
	2. 添加 #import "JPExport.h"
	

# Usage
使用方式：
	
	* 调用此方法 NSString * result = [JPExport exportFromDictionary:dict]; 会打印出 dict 中及嵌套的所有解析后的元素。
	* 或打个断点😜，在请求网络成功时，使用 po [JPExport exportFromDictionary:dict]

推荐第2种方式，省事、方便。

## Contacts	![](image/mum.jpg)

如果有甚么问题或者好建议,可以点 [这里](https://github.com/Jinxiansen/JPExport/issues) 提给我,
或 [发邮件](hi@jinxiansen) or [twitter](https://twitter.com/jinxiansen) .


## License	

JPExport is released under the [MIT license](LICENSE). See LICENSE for details.


