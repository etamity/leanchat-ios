//
//  CloudService.m
//  AVOSChatDemo
//
//  Created by lzw on 14-10-24.
//  Copyright (c) 2014年 AVOS. All rights reserved.
//

#import "CDCloudService.h"
#import "CDUserService.h"

@implementation CDCloudService

+(id)signWithPeerId:(NSString*)peerId watchedPeerIds:(NSArray*)watchPeerIds{
    if(watchPeerIds==nil){
        watchPeerIds=[[NSMutableArray alloc] init];
    }
    NSMutableDictionary *dict=[[NSMutableDictionary alloc] init];
    [dict setObject:peerId forKey:@"self_id"];
    [dict setObject:watchPeerIds forKey:@"watch_ids"];
    return [AVCloud callFunction:@"sign" withParameters:dict];
}

+(id)groupSignWithPeerId:(NSString*)peerId groupId:(NSString*)groupId groupPeerIds:(NSArray*)groupPeerIds action:(NSString*)action{
    NSMutableDictionary* dict=[@{@"self_id":peerId,@"group_id":groupId,@"action":action} mutableCopy];
    if(groupPeerIds!=nil){
        [dict setObject:groupPeerIds forKey:@"group_peer_ids"];
    }
    return [AVCloud callFunction:@"group_sign" withParameters:dict];
}

@end
