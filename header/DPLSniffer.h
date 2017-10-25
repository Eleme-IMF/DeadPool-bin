//
//  DPLTracker.h
//  Pods
//
//  Created by leo on 16/6/12.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPLSniffer : NSObject

/**
 *  传入调用方私有信息并报告
 *
 *  @param vendorInfo 调用方私有信息
 */
+ (void)reportWithVendorInfo:(nullable NSDictionary *)vendorInfo;

/**
 *  传入调用方私有信息并报告
 *
 *  @param vendorInfo 调用方私有信息
 *  @param handler    网络请求回调
 */
+ (void)reportWithVendorInfo:(nullable NSDictionary *)vendorInfo
           completionHandler:(nullable void (^)(NSError * _Nullable error))handler;

/**
 *  是否开启报告，默认为 YES
 *
 *  @param enabled 是否允许报告
 */
+ (void)setReportEnabled:(BOOL)enabled;

/**
 *  是否输出日志，默认为 NO
 *
 *  @param enabled 是否输出日志
 */
+ (void)setLogEnabled:(BOOL)enabled;

@end

NS_ASSUME_NONNULL_END
