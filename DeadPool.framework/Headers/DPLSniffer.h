//
//  DPLSniffer.h
//  DeadPool
//
//  Created by leo on 16/6/12.
//  Copyright © 2017 Rajax Network Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface DPLSniffer : NSObject

/**
 *  Report sniffed device info & your business data
 *
 *  if pass nil to `vendorInfo`, this method just report sniffed data;
 *
 *  @param vendorInfo caller business data
 */
+ (void)reportWithVendorInfo:(nullable NSDictionary *)vendorInfo;

/**
 *  Report sniffed device info & your business data
 *
 *  you could read failure info from `error` object if any mistake occured, otherwise
 *  it should be nil; Inside the method, it will retry after 30s until report succeed
 *
 *  @param vendorInfo caller business data
 *  @param handler    network request callback
 */
+ (void)reportWithVendorInfo:(nullable NSDictionary *)vendorInfo
           completionHandler:(nullable void (^)(NSError * _Nullable error))handler;

@end
NS_ASSUME_NONNULL_END
