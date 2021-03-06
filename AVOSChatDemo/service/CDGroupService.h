//
//  GroupService.h
//  AVOSChatDemo
//
//  Created by lzw on 14/11/6.
//  Copyright (c) 2014年 AVOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVOSCloud/AVOSCloud.h>
#import "CDChatGroup.h"

@interface CDGroupService : NSObject

+(void)findGroupsWithCallback:(AVArrayResultBlock)callback cacheFirst:(BOOL)cacheFirst;

+(void)findGroupsByIds:(NSMutableSet*)groupIds withCallback:(AVArrayResultBlock)callback;

+ (void)saveNewGroupWithName:(NSString*)name withCallback:(AVBooleanResultBlock)callback;

+(void)inviteMembersToGroup:(CDChatGroup*) chatGroup userIds:(NSArray*)userIds callback:(AVArrayResultBlock)callback;

+(void)kickMemberFromGroup:(CDChatGroup*)chatGroup userId:(NSString*)userId;

+(void)quitFromGroup:(CDChatGroup*)chatGroup;

+ (AVGroup *)joinGroupById:(NSString *)groupId;

+(AVGroup*)getGroupById:(NSString*)groupId;

+(void)setDelegateWithGroupId:(NSString*)groupId;

@end
