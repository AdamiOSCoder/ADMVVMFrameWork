//
//  URLDefine.h
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#ifndef URLDefine_h
#define URLDefine_h

#define MemLevDes_URL @"/app2/findMemterResource"
#define MemLevDes_Params(version,nonceStr,sign,token) [NSMutableDictionary dictionaryWithObjectsAndKeys:version,@"version",\
nonceStr,@"nonceStr",\
sign,@"sign",\
token,@"token",nil]

#endif /* URLDefine_h */
