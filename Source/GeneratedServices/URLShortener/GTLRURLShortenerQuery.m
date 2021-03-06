// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   URL Shortener API (urlshortener/v1)
// Description:
//   Lets you create, inspect, and manage goo.gl short URLs
// Documentation:
//   https://developers.google.com/url-shortener/v1/getting_started

#import "GTLRURLShortenerQuery.h"

#import "GTLRURLShortenerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// projection
NSString * const kGTLRURLShortenerProjectionAnalyticsClicks    = @"ANALYTICS_CLICKS";
NSString * const kGTLRURLShortenerProjectionAnalyticsTopStrings = @"ANALYTICS_TOP_STRINGS";
NSString * const kGTLRURLShortenerProjectionFull               = @"FULL";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRURLShortenerQuery

@dynamic fields;

@end

@implementation GTLRURLShortenerQuery_UrlGet

@dynamic projection, shortUrl;

+ (instancetype)queryWithShortUrl:(NSString *)shortUrl {
  NSString *pathURITemplate = @"url";
  GTLRURLShortenerQuery_UrlGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.shortUrl = shortUrl;
  query.expectedObjectClass = [GTLRURLShortener_Url class];
  query.loggingName = @"urlshortener.url.get";
  return query;
}

@end

@implementation GTLRURLShortenerQuery_UrlInsert

+ (instancetype)queryWithObject:(GTLRURLShortener_Url *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"url";
  GTLRURLShortenerQuery_UrlInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRURLShortener_Url class];
  query.loggingName = @"urlshortener.url.insert";
  return query;
}

@end

@implementation GTLRURLShortenerQuery_UrlList

@dynamic projection, startToken;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"startToken" : @"start-token" };
}

+ (instancetype)query {
  NSString *pathURITemplate = @"url/history";
  GTLRURLShortenerQuery_UrlList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRURLShortener_UrlHistory class];
  query.loggingName = @"urlshortener.url.list";
  return query;
}

@end
