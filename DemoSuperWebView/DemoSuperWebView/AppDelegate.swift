//
//  AppDelegate.swift
//  DemoSuperWebView
//
//  Created by 金宝泉 on 16/7/23.
//  Copyright © 2016年 x298017064010. All rights reserved.
//

import UIKit


/** 参考: http://docs.apicloud.com/Dev-Guide/SuperWebview-guide-for-ios
 1. 官网获取SuperWebview SDK
 3. 将SDK添加到工程中
 3.1 将lib文件夹添加到工程中，添加时选择Create groups选项。注意,如果想使用模拟器调试,不要从SDK导入,从ProjectFirst的事例工程中导入
 3.2 将lib/info文件的源码粘贴到工程的info.plist中,然后删除lib的info文件。
 3.3 找到项目工程的TARGETS ->Build Phases ->Link Binary With Libraries，添加SDK用到的必需的库WebKit.framework、libz.dylib、libicucore.dylib、libstdc++.dylib(lib中已包含)。
 3.4 找到项目工程的TARGETS->Build Settings->Other Linker Flags，添加-ObjC关键字。
 3.5 若是Xcode7，找到项目工程的TARGETS -> Build Settings->Enable Bitcode，设置为NO。
 3.6 添加了模块用到的第三方framework到工程后，若编译时报ld: framework not found xxx之类的错误，那么找到项目工程的TARGETS -> Build Settings -> Framework Search Paths，添加一下framework库所在的目录路径。
 4. 引入头文件(swift中要在桥接文件中引入):
 #import "APIWindowContainer.h"
 #import "APIManager.h"
 #import "APIEvent.h"
 #import "APIWebView.h"
 #import "APIScriptMessage.h"
 #import "APIModuleMethod.h"
 5. 初始化APIManager(BUG注意: swift中无法调用manager类方法,可通过自定义一个OC的类进行扩展)
 **/

/** 错误查找: http://community.apicloud.com/bbs/forum.php
 1. config.xml解析错误 -> widget包应该是蓝色的!
 2. 某某类的实例找不到某某方法 -> 初始化APIManager
 3. "_OBJC_CLASS_$_APIWindowContainer", referenced fro -> 官网下载的lib包不能用模拟器进行测试,如果想在模拟器使用,可以用实例代码FirstProject的lib包
 **/
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        APIManagerBySwift.manager().initSDKWithLaunchOptions(launchOptions)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

